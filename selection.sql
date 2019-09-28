-- Подсчёт количества товаров каждой категории

  SELECT
  		ct.name AS 'Раздел каталога',
		COUNT(*) AS 'Количество товаров'
	FROM
		products AS pr
		LEFT JOIN catalogs AS ct
		ON pr.catalog_id = ct.id
GROUP BY
		pr.catalog_id;
		
/*
|Раздел каталога                       |Количество товаров   |
|--------------------------------------|---------------------|
|Кирпич рабочий                        |86                   |
|Кирпич лицевой                        |569                  |
|Кирпич печной                         |6                    |
|Блоки керамические                    |13                   |
|Блоки газосиликатные                  |94                   |
|Блоки керамзитобетонные               |29                   |
|Гипсовые плиты                        |18                   |
|Силикатные плиты                      |1                    |
|Аквапанели                            |8                    |
|Гипсо-стружечные плиты                |20                   |
*/

-- Подсчёт количества товара размера "Полуторный" из всех разделов группы "Кирпич"

SELECT
  		COUNT(*) AS 'Количество полуторных кирпичей'
	FROM
		products AS pr
		LEFT JOIN catalogs AS ct
		ON pr.catalog_id = ct.id
		LEFT JOIN sizes AS sz
		ON pr.size_id = sz.id
   WHERE (ct.parent_id = 1)
GROUP BY
		pr.size_id
  HAVING
  		(pr.size_id = 9);

/*
|Количество полуторных кирпичей|
|------------------------------|
|152                           |
*/

-- Выборка товаров для страницы раздела "Кирпич лицевой".
-- Отсортировано по цене
SELECT
	pr.id AS 'Артикул',
	pr.name AS 'Наименование',
	mn.name AS 'Производитель',
	format(pr.opt_price,2) AS 'Цена',
	sz.name AS 'Размер',
	mt.name AS 'Материал',
	pr.strength AS 'Прочность'
  FROM
  	products AS pr
  	LEFT JOIN catalogs AS ct
  	ON pr.catalog_id = ct.id
  	LEFT JOIN manufacturers AS mn
  	ON pr.manufacturer_id = mn.id
  	LEFT JOIN sizes AS sz
  	ON pr.size_id = sz.id
  	LEFT JOIN materials AS mt
  	ON pr.material_id = mt.id
  	LEFT JOIN colors AS cl
  	ON pr.color_id = cl.id
 WHERE
 	(pr.catalog_id = 102) AND (pr.status = 1)
ORDER BY
	pr.opt_price;
	
-- Выборка товаров для страницы раздела "Кирпич лицевой"
-- Фильтр по производителю "TEREX" (mn.id = 3)

SELECT
	pr.id AS 'Артикул',
	pr.name AS 'Наименование',
	mn.name AS 'Производитель',
	format(pr.opt_price,2) AS 'Цена',
	sz.name AS 'Размер',
	mt.name AS 'Материал',
	pr.strength AS 'Прочность'
  FROM
  	products AS pr
  	LEFT JOIN catalogs AS ct
  	ON pr.catalog_id = ct.id
  	LEFT JOIN manufacturers AS mn
  	ON pr.manufacturer_id = mn.id
  	LEFT JOIN sizes AS sz
  	ON pr.size_id = sz.id
  	LEFT JOIN materials AS mt
  	ON pr.material_id = mt.id
  	LEFT JOIN colors AS cl
  	ON pr.color_id = cl.id
 WHERE
 	(pr.catalog_id = 102) AND (pr.status = 1) AND (mn.id = 3)
ORDER BY
	pr.opt_price;
	
-- Выборка товаров для страницы раздела "Кирпич рабочий"
-- Фильтр по размеру "одинарный" (pr.size_id = 8)
SELECT
	pr.id AS 'Артикул',
	pr.name AS 'Наименование',
	mn.name AS 'Производитель',
	format(pr.opt_price,2) AS 'Цена',
	sz.name AS 'Размер',
	mt.name AS 'Материал',
	pr.strength AS 'Прочность'
  FROM
  	products AS pr
  	LEFT JOIN catalogs AS ct
  	ON pr.catalog_id = ct.id
  	LEFT JOIN manufacturers AS mn
  	ON pr.manufacturer_id = mn.id
  	LEFT JOIN sizes AS sz
  	ON pr.size_id = sz.id
  	LEFT JOIN materials AS mt
  	ON pr.material_id = mt.id
  	LEFT JOIN colors AS cl
  	ON pr.color_id = cl.id
 WHERE
 	(pr.catalog_id = 101) AND (pr.status = 1) AND (pr.size_id = 8)
ORDER BY
	pr.opt_price;
	
-- Выборка всех характеристик товара для страницы "Карточка товара"
-- + тип, пустотность, поверхность, морозостойкость, размеры, описание

SELECT
	pr.id AS 'Артикул',
	pr.name AS 'Наименование',
	mn.name AS 'Производитель',
	format(pr.opt_price,2) AS 'Цена',
	pp.name AS 'Тип',
	sz.name AS 'Размер',
	sz.size_length AS 'Длина',
	sz.size_width AS 'Ширина',
	sz.size_height AS 'Высота',
	mt.name AS 'Материал',
	pr.strength AS 'Прочность',
	cl.name AS 'Цвет',
	sf.name AS 'Поверхность',
	vd.name AS 'Пустотность',
	pr.frost AS 'Морозостойкость',
	pr.termal AS 'Теплопроводность',
	RTRIM(pr.description) AS 'Описание'
  FROM
  	products AS pr
  	LEFT JOIN catalogs AS ct
  	ON pr.catalog_id = ct.id
  	LEFT JOIN manufacturers AS mn
  	ON pr.manufacturer_id = mn.id
  	LEFT JOIN sizes AS sz
  	ON pr.size_id = sz.id
	LEFT JOIN purposes AS pp
	ON pr.purpose_id = pp.id
  	LEFT JOIN materials AS mt
  	ON pr.material_id = mt.id
  	LEFT JOIN colors AS cl
  	ON pr.color_id = cl.id
  	LEFT JOIN surfaces AS sf
  	ON pr.surface_id = sf.id
  	LEFT JOIN voidness AS vd
  	ON pr.voidness_id = vd.id
 WHERE
 	pr.id = 3475;
	
-- Выбор оплаченных и отгруженных заказов
SELECT
	od.id AS 'Номер заказа',
	us.fullname AS 'Покупатель',
	os.name AS 'Статус заказа',
	rg.name AS 'Регион',
	od.delivery_address AS 'Адрес доставки',
	dt.name AS 'Тип доставки',
	od.order_sum 'Сумма заказа'
  FROM
  	orders AS od
  	LEFT JOIN users AS us
  	ON od.user_id = us.id
  	LEFT JOIN order_statuses AS os
  	ON od.order_status_id = os.id
  	LEFT JOIN regions AS rg
  	ON od.region_id = rg.id
  	LEFT JOIN delivery_types AS dt
  	ON od.delivery_type_id = dt.id
 WHERE
 	(od.order_status_id > 2);
	
/*
|Номер заказа|Покупатель             |Статус заказа                   |Регион              |Тип доставки               |Адрес доставки                                    |Сумма заказа  |
|------------|-----------------------|--------------------------------|--------------------|---------------------------|--------------------------------------------------|--------------|
|1           |Иванов Михаил Петрович |Отгружен.                       |Москва              |Доставка машиной компании. |Московская область, Немчиновка, ул. Зеленая 5     |253130.00     |
|2           |Петров Сергей Иванович |Отгружен.                       |Москва              |Доставка машиной компании. |Московская область, Одинцовский р-он, с. Шарапово |183762.23     |
|8           |Петров Сергей Иванович |Отгружен.                       |Москва              |Доставка машиной компании. |Московская область, Одинцовский р-он, с. Шарапово |117043.66     |
|6           |ИП Пушкин              |Оплачен. Формируется к отправке.|Владимирская область|Доставка машиной завода    |Владимирская область, г. Суздаль, ул. Ильинская 9 |106768.18     |
*/

-- Выбор состава заказа № 2

SELECT
	od.id AS 'Номер заказа',
	pr.name AS 'Товар',
	FORMAT(op.quantity,3) AS 'Количество',
	FORMAT(op.price,2) AS 'Цена',
	FORMAT(op.total,2) AS 'Сумма'
  FROM
  	orders AS od
  	JOIN orders_products AS op
  	ON op.order_id = od.id
  	LEFT JOIN products AS pr
  	ON op.product_id = pr.id
 WHERE
 	(od.id = 2);
	
/*
|Номер заказа|Товар                                                 |Количество |Цена    |Сумма      |
|------------|------------------------------------------------------|-----------|--------|-----------|
|2           |Рядовой полнотелый кирпич 1 M-125 Воротынск           |6,300.000  |10.59   |66,717.00  |
|2           |Плита гипсовая обычная полнотелая 667х500х80 Пешелань |224.010    |522.50  |117,045.23 |
*/

-- Выбор товара с максимальной ценой из раздела "Гипсовые плиты"
SELECT
	products.id,
  	products.name,
	opt_price AS 'Максимальная цена'
  FROM
	products
 WHERE
	opt_price = (SELECT
	 				    MAX(opt_price)
				   FROM products
				  WHERE
				  		(products.catalog_id = 301)
				 );
				 
/*
|id        |name                                                       |Максимальная цена|
|----------|-----------------------------------------------------------|-----------------|
|6805      |Плита гипсовая влагостойкая полнотелая 667х500х100 KNAUF   |997.70           |
*/

-- Второй вариант этого же запроса. Использование вложенных таблиц.

SELECT
	products.id,
  	products.name,
	opt_price AS 'Максимальная цена'
  FROM
	products
 WHERE
	opt_price = (SELECT
	 				    MAX(opt_price)
				   FROM products
				  WHERE
				  		(products.catalog_id = (SELECT id FROM catalogs WHERE name = "Гипсовые плиты"))
				 );

	