/* Задания на БД vk:
1. Проанализировать какие запросы могут выполняться наиболее часто в процессе работы приложения и добавить необходимые индексы.
*/

-- Поиск пользователей по Имени и Фамилии
CREATE INDEX users_firstname_lastname_idx ON users (firstname, lastname);

-- Если часто используется сортировка по дате рождения - индекс по дате рождения
CREATE INDEX profiles_birthday_idx ON profiles (birthday);

-- Поиск по названию групп
CREATE INDEX communities_name_idx ON communities (name);

-- Очень часто ищут музыку и фильмы по названию и году создания произведения.
-- Добавим в таблицу media соответствующие колонки

ALTER TABLE media ADD 
	media_name VARCHAR(100) NOT NULL,
	year_issue INT(4) NOT NULL;
	
-- И индексы для поиска

CREATE INDEX media_media_name_idx ON media (media_name);
CREATE INDEX media_year_issue_idx ON media (media_name);	


/* 2. Задание на денормализацию
Разобраться как построен и работает следующий запрос:
*/

SELECT SUM(count) as overall 
  FROM (SELECT
			CONCAT(u.firstname, ' ', u.lastname) as user,
			count(l.id) as count,
			TIMESTAMPDIFF(YEAR, p.birthday, NOW()) AS age
		FROM users AS u
			INNER JOIN profiles AS p
			ON p.user_id = u.id
			LEFT JOIN media as m
			ON m.user_id = u.id
			LEFT JOIN messages as t
			ON t.from_user_id = u.id
			LEFT JOIN
			likes AS l
			ON l.item_id = u.id AND l.like_type_id = 2
			OR l.item_id = m.id AND l.like_type_id = 1
			OR l.item_id = t.id AND l.like_type_id = 3
		GROUP BY u.id
		ORDER BY p.birthday DESC
		LIMIT 10) AS likes;

/*Правильно-ли он построен?
Какие изменения, включая денормализацию, можно внести в структуру БД
чтобы существенно повысить скорость работы этого запроса?
*/

-- 1. Можно не использовать таблицу users, a использовать user_id из таблицы profiles
-- 2. Насколько мне известно, обычно лайки в сообщениях между пользователями не используюся.
--	  Лайкают посты (сообщения в группах). Поэтому таблица messages заменена на posts
-- 3. При вычислении возраста в годах может быть некорректный отбор 10 самых молодых.
--	  Можно без вычислений отсортировать по дате рождения

SELECT SUM(count) as overall 
  FROM (
		SELECT
			pf.user_id,
			pf.birthday,	-- выбор даты рождения
			count(lk.id) as count
		FROM profiles AS pf
			LEFT JOIN media as md
			ON md.user_id = pf.user_id
			LEFT JOIN posts as ps		-- таблица posts вместо messages
			ON ps.user_id = pf.user_id
			LEFT JOIN likes AS lk
			ON (lk.item_id = pf.user_id AND lk.likes_type_id = 2) OR
			   (lk.item_id = md.id AND lk.likes_type_id = 1) OR
			   (lk.item_id = ps.id AND lk.likes_type_id = 3)
		GROUP BY pf.user_id
		ORDER BY pf.birthday DESC
		LIMIT 10
		) AS likes;
 
 /* Предложения по денормализации:
 
 1. Объединить таблицы users + profiles. Для запросов, где будут нужны данные из обоих таблиц,
    не будет необходимости их постоянно связывать.
 
 2. Добавить индекс на likes.likes_type_id + likes.item_id для ускорения выборки
CREATE INDEX likes_likes_type_id_item_id_idx ON (likes_type_id, item_id);

*/