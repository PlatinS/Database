-- Для таблицы профилей пользователей
ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;

-- Для таблицы сообщений
ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id)
	ON DELETE CASCADE,
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id)
	ON DELETE CASCADE;
	
-- Для таблицы друзей
ALTER TABLE friendship
  ADD CONSTRAINT friendship_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
	ON DELETE CASCADE,
  ADD CONSTRAINT friendship_friend_id_fk 
    FOREIGN KEY (friend_id) REFERENCES users(id)
	ON DELETE CASCADE;

-- Для таблицы сообществ пользователей
ALTER TABLE communities_users
  ADD CONSTRAINT communities_users_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
  ADD CONSTRAINT communities_users_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
	ON DELETE CASCADE;
	
-- Для таблицы медиа
ALTER TABLE media
  ADD CONSTRAINT media_media_type_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
  ADD CONSTRAINT media_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
	ON DELETE CASCADE;
	
-- Для таблицы новостная лента
ALTER TABLE newsline
  ADD CONSTRAINT newsline_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
	ON DELETE CASCADE;
	
-- Для таблицы постов
ALTER TABLE posts
  ADD CONSTRAINT posts_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
	ON DELETE CASCADE,
  ADD CONSTRAINT posts_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
  ADD CONSTRAINT posts_media_id_fk 
    FOREIGN KEY (media_id) REFERENCES media(id)
	ON DELETE CASCADE;
	
-- Для таблицы лайков
ALTER TABLE likes
  ADD CONSTRAINT likes_likes_types_id_fk 
    FOREIGN KEY (likes_type_id) REFERENCES like_types(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
  ADD CONSTRAINT likes_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
	ON DELETE CASCADE;