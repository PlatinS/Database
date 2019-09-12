--Практическое задание по теме “Транзакции, переменные, представления”

-- В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

START TRANSACTION;
DELETE IGNORE FROM
	sample.users
WHERE sample.users.id = 1;
INSERT INTO
	sample.users
	SELECT * 
	  FROM shop.users
     WHERE shop.users.id = 1;
	 
DELETE FROM
	shop.users
WHERE shop.users.id = 1;
COMMIT;

-- Создайте представление, которое выводит название name товарной позиции из таблицы products
-- и соответствующее название каталога name из таблицы catalogs.

CREATE OR REPLACE VIEW products_catalogs_view AS
	SELECT 
		products.name AS product, 
		catalogs.name AS catalog
	FROM products
		JOIN catalogs 
		ON products.catalog_id = catalogs.id;

SELECT catalog, product FROM products_catalogs_view
ORDER BY catalog, product;


-- по желанию) Пусть имеется таблица с календарным полем created_at. 
-- В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04',
-- '2018-08-16' и 2018-08-17. Составьте запрос, который выводит полный список дат за август, 
-- выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.

ALTER TABLE users ADD dopcln TINYINT;

CREATE TEMPORARY TABLE temp 
	SELECT users.created_at
	  FROM users
	 WHERE users.created_at BETWEEN '2018-08-01' AND '2018-08-31';
	 
UPDATE users 
   SET dopcln=IF(created_at IN (SELECT created_at FROM temp), 1, 0);


-- (по желанию) Пусть имеется любая таблица с календарным полем created_at. 
-- Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.

 
  CREATE TEMPORARY TABLE temp2
  SELECT created_at 
    FROM users
ORDER BY created_at DESC
   LIMIT 5;
   
DELETE FROM users 
 WHERE created_at NOT IN (SELECT * FROM temp2);
 