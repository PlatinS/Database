-- Практическое задание тема №9
-- 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products
--    в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.

USE SHOP;
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
  table_name VARCHAR(24),
  row_id BIGINT,
  name VARCHAR(255),
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) COMMENT = 'Таблица логов' ENGINE=Archive;

DELIMITER $$
$$
DROP TRIGGER IF EXISTS users_log$$
CREATE TRIGGER users_log AFTER INSERT ON users
FOR EACH ROW
BEGIN
    INSERT INTO logs SET table_name="users", row_id=NEW.id, name=NEW.name;
END$$

DROP TRIGGER IF EXISTS catalogs_log$$
CREATE TRIGGER catalogs_log AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
    INSERT INTO logs SET table_name="catalogs", row_id=NEW.id, name=NEW.name;
END$$

DROP TRIGGER IF EXISTS products_log$$
CREATE TRIGGER products_log AFTER INSERT ON products
FOR EACH ROW
BEGIN
    INSERT INTO logs SET table_name="products", row_id=NEW.id, name=NEW.name;
END$$

DELIMITER ;

INSERT INTO users (name) VALUES ('Игорь');
INSERT INTO catalogs (name) VALUES ('Принтеры');
INSERT INTO products (catalog_id, name) VALUES (6, 'Принтер лазерный XEROX Phaser 3020');

SELECT * FROM logs;

/*
|table_name         |row_id         |name                                       |created_at               |
|-------------------|---------------|-------------------------------------------|-------------------------|
|users              |12             |Игорь                                      |2019-09-20-13.38.17 +0300|
|catalogs           |12             |Принтеры                                   |2019-09-20-13.38.17 +0300|
|products           |11             |Принтер лазерный XEROX Phaser 3020         |2019-09-20-13.38.17 +0300|
*/
