/*
В соответствии со стандартом, зарезервированные ключевые слова нельзя использовать
для именования объектов базы данных, таких как таблицы, столбцы и пользователи.
Поэтому названия столбцов заменены на "departure" и "arrival"
Можно было и оставить, но заключить в обратные кавычки - `from`, что позволяет MySQL
*/

USE example;
DROP TABLE IF EXISTS flight;
CREATE TABLE flight (
  id SERIAL PRIMARY KEY,
  departure VARCHAR(60) COMMENT 'Departure',
  arrival   VARCHAR(60) COMMENT 'Arrival'
) COMMENT = 'Таблица рейсов';

INSERT INTO flight VALUES
  (1, 'Moscow', 'Omsk'),
  (2, 'Novgorod', 'Kazan'),
  (3, 'Irkutsk', 'Moscow'),
  (4, 'Omsk', 'Irkutsk'),
  (5, 'Moscow', 'Kazan');
  
DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  label VARCHAR(60) COMMENT 'English',
  name  VARCHAR(60) COMMENT 'Russian'
) COMMENT = 'Города';

INSERT INTO cities VALUES
  ('Moscow', 'Москва'),
  ('Novgorod', 'Новгород'),
  ('Irkutsk', 'Иркутск'),
  ('Omsk', 'Омск'),
  ('Kazan', 'Казань');
  
  SELECT
	id as 'Рейс',
	(SELECT name FROM cities c WHERE c.label = f.departure) AS 'Отправление',
	(SELECT name FROM cities c WHERE c.label = f.arrival) AS 'Прибытие'
  FROM
	flight f;
	