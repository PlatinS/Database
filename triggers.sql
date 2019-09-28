-- Функция расчёта суммы заказа

DELIMITER $$
DROP FUNCTION IF EXISTS sum_total$$
CREATE FUNCTION sum_total (orid INT UNSIGNED)
RETURNS DECIMAL (12,2) DETERMINISTIC
BEGIN
	DECLARE order_total DECIMAL (12,2);
	SELECT SUM(total) INTO order_total FROM orders_products AS op WHERE op.order_id = orid;
	RETURN order_total;
END$$
DELIMITER ;

-- Тригер расчёта суммы за товар при вставке новой строки в таблице orders_products
DELIMITER $$
DROP TRIGGER IF EXISTS auto_insert_orders_products_total$$
CREATE TRIGGER auto_insert_orders_products_total BEFORE INSERT ON orders_products
FOR EACH ROW
BEGIN
  SET NEW.total = NEW.quantity * NEW.price;
END$$
DELIMITER ;

-- Тригер расчёта общей суммы за товары в таблице orders
DELIMITER $$
DROP TRIGGER IF EXISTS auto_insert_orders_total$$
CREATE TRIGGER auto_insert_orders_total AFTER INSERT ON orders_products
FOR EACH ROW
BEGIN
	SET @order_id = new.order_id;
	UPDATE orders SET orders.order_sum=sum_total(@order_id) WHERE orders.id=@order_id;
END$$
DELIMITER ;

-- Тригер расчёта суммы за товар при приобновлении строки в таблице orders_products
DELIMITER $$
DROP TRIGGER IF EXISTS auto_update_orders_products_total$$
CREATE TRIGGER auto_update_orders_products_total BEFORE UPDATE ON orders_products
FOR EACH ROW
BEGIN
	IF (new.quantity <> old.quantity) OR (new.price <> old.price) THEN
		SET new.total = new.quantity * new.price;
	END IF;
END$$
DELIMITER ;

-- Тригер расчёта общей суммы за товары в таблице orders при обновлении orders_products
DELIMITER $$
DROP TRIGGER IF EXISTS auto_update_orders_total$$
CREATE TRIGGER auto_update_orders_total AFTER UPDATE ON orders_products
FOR EACH ROW
BEGIN
    SET @order_id = new.order_id;
	UPDATE orders SET orders.order_sum=sum_total(@order_id) WHERE orders.id=@order_id;
END$$
DELIMITER ;

-- Проверка
INSERT INTO orders (id, user_id, order_status_id, region_id, delivery_type_id, delivery_address,
					order_comment, order_sum, created_at, updated_at) VALUES
(9, 1, 4, 1, 2, 'Московская область, Одинцовский р-он, д. Валуйки', 'Сообщить о приезде машины за час.', 0.0, NOW(), NOW());

INSERT INTO orders_products (order_id, product_id, quantity, price) VALUES
(9, 10624, 31.875, 3349.59);
