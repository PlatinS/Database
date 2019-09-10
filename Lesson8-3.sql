-- Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека,
-- который больше всех общался с нашим пользователем.
  
SELECT
	u.id, 
	CONCAT(u.firstname, ' ', u.lastname) AS 'Друг',
	COUNT(mf.from_user_id) + COUNT(mt.to_user_id) AS mess 
  FROM users AS u
	   LEFT JOIN messages AS mf
	   ON u.id = mf.from_user_id
	   	  AND mf.to_user_id = 7
	   	  
       LEFT JOIN messages AS mt
       ON u.id = mt.to_user_id
		  AND mt.from_user_id = 7 
 GROUP BY u.id
 ORDER BY mess DESC
 LIMIT 1;
 
-- Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

SELECT
	users.id, 
	CONCAT(users.firstname, ' ', users.lastname) AS 'Пользователь',
	profiles.birthday AS birthday,	
	COUNT(lku.id) + COUNT(lkm.id) as total_likes
  FROM users
	   LEFT JOIN profiles
	   ON users.id = profiles.user_id
	   
	   LEFT JOIN likes AS lku
       ON users.id = lku.item_id
	   
	   LEFT JOIN media
       ON users.id = media.user_id
	   
	   LEFT JOIN likes AS lkm
       ON media.id = lkm.item_id
	   
  GROUP BY users.id
  ORDER BY birthday DESC
  LIMIT 10;
 
-- Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT
	   COUNT(likes.user_id) AS likes,
	   profiles.sex
  FROM likes
	   JOIN profiles
	   ON likes.user_id = profiles.user_id
GROUP BY profiles.sex
ORDER BY likes DESC;

-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

SELECT
	   CONCAT(users.firstname, ' ', users.lastname) AS 'User',
	   (COUNT(likes.user_id) + COUNT(messages.from_user_id) + COUNT(media.user_id)) AS total
  FROM users
	   LEFT JOIN likes
	   ON users.id = likes.user_id
	   
	   LEFT JOIN messages
	   ON users.id = messages.from_user_id

	   LEFT JOIN media
	   ON users.id = media.user_id
GROUP BY users.id
ORDER BY total
LIMIT 10;