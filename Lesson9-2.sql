/*
Хранимые процедуры и функции, триггеры
*/

-- Создайте хранимую функцию hello(), которая будет возвращать приветствие, 
-- в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро",
-- с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", 
-- с 00:00 до 6:00 — "Доброй ночи".

-- DBeaver - в разделе Процедуры таблицы example

DROP FUNCTION IF EXISTS example.hello;

DELIMITER $$
$$
CREATE FUNCTION example.hello()
RETURNS TEXT DETERMINISTIC
BEGIN
	CASE
		WHEN (TIME(NOW())>'18:00') THEN RETURN 'Добрый вечер!';
		WHEN (TIME(NOW())>'12:00') THEN RETURN 'Добрый день!';
		WHEN (TIME(NOW())>'06:00') THEN RETURN 'Доброе утро!';
		ELSE RETURN 'Доброй ночи';
	END CASE;
END$$
DELIMITER ;

-- в консоли
SELECT hello();


-- В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное 
-- значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля 
-- были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.

DELIMITER $$
$$
DROP TRIGGER IF EXISTS check_catalog_name_desc$$
CREATE TRIGGER check_catalog_name_desc BEFORE INSERT ON products
FOR EACH ROW
BEGIN
  	IF (NEW.name IS NULL AND NEW.description IS NULL) THEN
  		SIGNAL SQLSTATE '45000' 
		SET MESSAGE_TEXT = 'Name and Description CAN NOT BE NULL';
  	END IF;
END$$
DELIMITER ;


-- (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. Числами Фибоначчи
-- называется последовательность в которой число равно сумме двух предыдущих чисел. 
-- Вызов функции FIBONACCI(10) должен возвращать число 55.

DROP FUNCTION IF EXISTS fibonacci;

DELIMITER $$
$$
CREATE FUNCTION fibonacci (n INT UNSIGNED)
RETURNS INT UNSIGNED DETERMINISTIC
BEGIN
	DECLARE sq FLOAT DEFAULT SQRT(5);
    RETURN (POW(((1 + sq) / 2), n) - POW(((1 - sq) / 2), n)) / sq;
END$$
DELIMITER ;

SELECT fibonacci(10);
