/*
1.	Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
*/

SELECT name
  FROM users
 WHERE EXISTS (SELECT 1 FROM orders WHERE user_id = users.id); 

/*
2.	Выведите список товаров products и разделов catalogs, который соответствует товару.
*/

SELECT
	id,
	name as 'Товар',
	(SELECT name FROM catalogs c WHERE c.id = p.catalog_id) AS 'Раздел'
  FROM
	products p;
