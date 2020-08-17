/*
1. Проанализировать запросы, которые выполнялись на занятии, определить возможные корректировки
   и/или улучшения (JOIN пока не применять).
*/

-- Получаем все фотографии пользователя
-- Добавлены Имя и Фамилия пользователя
SELECT
	firstname,
	lastname,
	(SELECT filename
	FROM media
	WHERE user_id = 7 AND media_type_id = 
		(SELECT id FROM media_types WHERE name LIKE '%Photo%')
	) as photo
 FROM users
WHERE id = 7;

-- Выбираем только друзей с подтверждённым статусом
-- В таблице friendship имеются статусы 'Confirmed','Rejected','Request'
-- Добавлены имена друзей
SELECT 
	id,
	CONCAT(firstname, ' ', lastname) as 'Друг'
FROM users
WHERE id IN
		(( SELECT friend_id 
		     FROM friendship
			WHERE user_id = 7 AND status = 'Confirmed')
		UNION
		 ( SELECT user_id
			 FROM friendship
			WHERE friend_id = 7 AND status = 'Confirmed')
		);
	
-- Определяем пользователей, общее занимаемое место медиафайлов которых превышает 12МБ
-- Добавлены имена пользователей
  SELECT
	user_id,
	(SELECT CONCAT(firstname, ' ', lastname) 
    FROM users u 
      WHERE u.id = m.user_id) AS User,
	SUM(size) AS total
    FROM media m
GROUP BY user_id
  HAVING total > 12000
ORDER BY total DESC;	


/*
2. Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека,
   который больше всех общался с нашим пользователем.
*/

  SELECT
	from_user_id,
	(SELECT CONCAT(firstname, ' ', lastname) 
     	FROM users 
     	WHERE id = from_user_id) AS friend,	
	 COUNT(*) AS total 
    FROM messages 
   WHERE to_user_id=7 
GROUP BY from_user_id

UNION
  SELECT
	to_user_id,
	(SELECT CONCAT(firstname, ' ', lastname) 
     	FROM users 
     	WHERE id = to_user_id) AS friend,	
	 COUNT(*) AS total
    FROM messages 
   WHERE from_user_id=7 
GROUP BY to_user_id
	
ORDER BY total DESC
LIMIT 1;

/*
3. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
*/

SELECT
	COUNT(*) AS 'Всего лайков'
	FROM likes 
    WHERE user_id
    	IN (SELECT age.user_id 
			FROM (SELECT
	             	user_id,
    	         	birthday 
					FROM profiles 
				ORDER BY birthday DESC
			 	   LIMIT 10) AS age
			);

/*
4. Определить кто больше поставил лайков (всего) - мужчины или женщины?
*/

  SELECT
	     COUNT(*) AS likes,
	     sex
    FROM likes, profiles
   WHERE likes.user_id = profiles.user_id
GROUP BY sex
ORDER BY likes DESC;

/*
5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.
*/

SELECT 
	CONCAT(firstname, ' ', lastname) AS 'Пользователь',
	(SELECT COUNT(user_id) FROM likes WHERE user_id = users.id) AS count_likes,
	(SELECT COUNT(from_user_id) FROM messages WHERE from_user_id = users.id) AS count_messages,
	(SELECT COUNT(user_id) FROM media WHERE user_id = users.id) AS count_media,
	(SELECT count_likes + count_messages + count_media) AS TOTAL
    FROM users
ORDER BY total
   LIMIT 10;