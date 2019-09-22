-- 1. Проверить, исправить при необходимости и оптимизировать следующий запрос:

SELECT CONCAT(u.firstname, ' ', u.lastname) AS user, 
COUNT(l.id) + COUNT(m.id) + COUNT(t.id) AS overall_activity
FROM users AS u
LEFT JOIN
likes AS l
ON l.user_id = u.id
LEFT JOIN
media AS m
ON m.user_id = u.id
LEFT JOIN
messages AS t
ON t.from_user_id = u.id
GROUP BY u.id
ORDER BY overall_activity
LIMIT 10;

-- Запрос выводит 10 пользователей с наименьшей активностью - написано сообщений, добавлено медиа-контента, поставлено лайков
-- В таблице messages нет поля id. Поэтому для подсчёта количества возьмем поле body
-- Проверка данных по таблицам likes, media и messages показало, что при исходном запросе в COUNT происходит дублирование
-- некоторых записей. Добавлен DISTINCT - берутся только уникальные записи.

SELECT
	u.id,
	CONCAT(u.firstname, ' ', u.lastname) AS user, 
	COUNT(DISTINCT l.id) AS l_count,
	COUNT(DISTINCT m.id) AS m_count,
	COUNT(DISTINCT t.body) AS t_count
  FROM users AS u
		LEFT JOIN likes AS l
		ON l.user_id = u.id
		LEFT JOIN media AS m
		ON m.user_id = u.id
		LEFT JOIN messages AS t
		ON t.from_user_id = u.id
GROUP BY u.id;

EXPLAIN SELECT
	CONCAT(u.firstname, ' ', u.lastname) AS user, 
	COUNT(DISTINCT l.id) + COUNT(DISTINCT m.id) + COUNT(DISTINCT t.body) AS overall_activity
  FROM users AS u
		LEFT JOIN likes AS l
		ON l.user_id = u.id
		LEFT JOIN media AS m
		ON m.user_id = u.id
		LEFT JOIN messages AS t
		ON t.from_user_id = u.id
GROUP BY u.id
ORDER BY overall_activity
LIMIT 10;

/*
|id |select_type|table|type  |possible_keys      |key               |key_len|ref     |rows |filtered|Extra                           |
|---|-----------|-----|------|-------------------|------------------|-------|--------|-----|--------|--------------------------------|
|1  |SIMPLE     |u    |index |PRIMARY,email,phone|PRIMARY           |4      |        |100  |100.0   |Using temporary; Using filesort |
|1  |SIMPLE     |l    |ref   |likes_user_id_fk   |likes_user_id_fk  |4      |vk.u.id |1    |100.0   |Using index                     |
|1  |SIMPLE     |m    |ref   |media_user_id_fk   |media_user_id_fk  |4      |vk.u.id |1    |100.0   |Using index                     |
|1  |SIMPLE     |t    |ref   |PRIMARY            |PRIMARY           |4      |vk.u.id |1    |100.0   |                                |
*/

-- В последней твблице messages нет сообщения "Using index". Попробуем добавить колонку id, заполним значениями по порядку
-- и добавим индекс. Эту колонку будем использовать в запросе вместо колонки body

ALTER TABLE messages ADD COLUMN id INT UNSIGNED NOT NULL;
UPDATE messages SET id=@num:=@num+1 WHERE 0 IN(SELECT @num:=0);
CREATE INDEX messages_id_idx ON messages(id);

EXPLAIN SELECT
	CONCAT(u.firstname, ' ', u.lastname) AS user, 
	COUNT(DISTINCT l.id) + COUNT(DISTINCT m.id) + COUNT(DISTINCT t.id) AS overall_activity
  FROM users AS u
		LEFT JOIN likes AS l
		ON l.user_id = u.id
		LEFT JOIN media AS m
		ON m.user_id = u.id
		LEFT JOIN messages AS t
		ON t.from_user_id = u.id
GROUP BY u.id
ORDER BY overall_activity
LIMIT 10;

-- Результат, к сожалению, не изменился. Но в MySQL Workbench (Execution Plan) все таблицы зелёные, кроме users


-- 2. (по желанию) Попытаться улучшить результат оптимизации примера, 
-- который рассмотрен на занятии

SELECT SUM(count) as overall 
  FROM (
		SELECT COUNT(DISTINCT lk.id) AS count
		  FROM
			(SELECT pf.user_id FROM profiles pf ORDER BY birthday DESC LIMIT 10) AS pf
			LEFT JOIN media as md
			ON md.user_id = pf.user_id
			LEFT JOIN posts as ps
			ON ps.user_id = pf.user_id
			LEFT JOIN likes AS lk
			ON (lk.item_id = pf.user_id AND lk.likes_type_id = 2) OR
			   (lk.item_id = md.id AND lk.likes_type_id = 1) OR
			   (lk.item_id = ps.id AND lk.likes_type_id = 4)
		GROUP BY pf.user_id
		) AS likes_total;
		
-- Для вышеприведённого запроса - Execution Plan: Query cost 245.84

-- Добавим индекс и разобьём последний JOIN на 3 части

CREATE INDEX likes_item_id_likes_type_idx ON likes(item_id,likes_type_id);
		
EXPLAIN SELECT SUM(count) as overall 
  FROM (
		SELECT COUNT(DISTINCT lk1.id)+COUNT(DISTINCT lk2.id)+COUNT(DISTINCT lk3.id) AS count
		  FROM
			(SELECT pf.user_id FROM profiles pf ORDER BY birthday DESC LIMIT 10) AS pf
			LEFT JOIN media as md
			ON md.user_id = pf.user_id
			LEFT JOIN posts as ps
			ON ps.user_id = pf.user_id
			LEFT JOIN likes AS lk1
			ON (lk1.item_id = pf.user_id AND lk1.likes_type_id = 2)
			LEFT JOIN likes AS lk2
			ON (lk2.item_id = md.id AND lk2.likes_type_id = 1)
			LEFT JOIN likes AS lk3
			ON (lk3.item_id = ps.id AND lk3.likes_type_id = 4)
		GROUP BY pf.user_id
		) AS likes_total;
		
-- Для вышеприведённого запроса - Execution Plan: Query cost 7.34
-- Все таблицы стали зелёными и попали в индекс. Кроме первой группировки 10 пользователей.