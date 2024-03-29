CREATE TABLE newsline (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL, -- Пользователь, который написал новость
  body TEXT NOT NULL,
  created_at DATETIME DEFAULT NOW()
);

CREATE TABLE like_types (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE likes (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
   item_id INT UNSIGNED NOT NULL,
   likes_type_id INT UNSIGNED NOT NULL,
   user_id INT UNSIGNED NOT NULL,
   created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
   updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
