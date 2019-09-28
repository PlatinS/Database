CREATE DATABASE IF NOT EXISTS shop_const;
USE shop_const;

-- Разделы каталога
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
id INT UNSIGNED NOT NULL UNIQUE PRIMARY KEY,
name VARCHAR(100) COMMENT 'Название раздела',
parent_id INT COMMENT 'Родительский раздел',
status TINYINT(1) NOT NULL COMMENT 'Доступность',
UNIQUE unique_name(name(12))
) COMMENT 'Разделы каталога';

-- Регионы
DROP TABLE IF EXISTS regions;
CREATE TABLE regions (
id INT UNSIGNED NOT NULL UNIQUE PRIMARY KEY,
name VARCHAR(255)
) COMMENT 'Регионы';

-- Производители
DROP TABLE IF EXISTS manufacturers;
CREATE TABLE manufacturers (
id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
name VARCHAR(120) COMMENT 'Наименование производителя',
region_id INT UNSIGNED NOT NULL COMMENT 'Регион',
UNIQUE unique_name(name(12))
) COMMENT 'Производители';

-- Назначение
DROP TABLE IF EXISTS purposes;
CREATE TABLE purposes (
id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
name VARCHAR(60)
) COMMENT 'Назначения использования';

-- Материалы
DROP TABLE IF EXISTS materials;
CREATE TABLE materials (
id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
name VARCHAR(60)
) COMMENT 'Материалы';

-- Размеры
DROP TABLE IF EXISTS sizes;
CREATE TABLE sizes (
id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
name VARCHAR(60) COMMENT 'Наименование размера',
size_length INT UNSIGNED NOT NULL COMMENT 'Длина',
size_width  INT UNSIGNED NOT NULL COMMENT 'Ширина',
size_height INT UNSIGNED NOT NULL COMMENT 'Высота'
) COMMENT 'Размеры';

-- Цвета
DROP TABLE IF EXISTS colors;
CREATE TABLE colors (
id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
name VARCHAR(60)
) COMMENT 'Цвета';

-- Поверхность
DROP TABLE IF EXISTS surfaces;
CREATE TABLE surfaces (
id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
name VARCHAR(60)
) COMMENT 'Поверхность';

-- Пустотность
DROP TABLE IF EXISTS voidness;
CREATE TABLE voidness (
id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
name VARCHAR(60)
) COMMENT 'Пустотность';

-- Товары
DROP TABLE IF EXISTS products;
CREATE TABLE products (
id INT UNSIGNED NOT NULL UNIQUE PRIMARY KEY,
catalog_id INT UNSIGNED NOT NULL COMMENT 'Раздел каталога',
manufacturer_id INT UNSIGNED NOT NULL COMMENT 'Производитель',
name VARCHAR(255) COMMENT 'Наименование товара',
status TINYINT(1) NOT NULL COMMENT 'Доступность',
unit VARCHAR(24) NOT NULL COMMENT 'Единица измерения',
opt_price DECIMAL (12,2) COMMENT 'Оптовая цена',
roz_price DECIMAL (12,2) COMMENT 'Розничная цена',
description VARCHAR(500) COMMENT 'Описание товара',
purpose_id INT UNSIGNED NOT NULL COMMENT 'Назначение',
material_id INT UNSIGNED NOT NULL COMMENT 'Материал', 
size_id INT UNSIGNED NOT NULL COMMENT 'Размер',
strength FLOAT COMMENT 'Прочность',
density SMALLINT COMMENT 'Плотность',
color_id INT UNSIGNED NOT NULL COMMENT 'Цвет',
surface_id INT UNSIGNED NOT NULL COMMENT 'Поверхность',
voidness_id INT UNSIGNED NOT NULL COMMENT 'Пустотность',
termal FLOAT COMMENT 'Теплопроводность',
frost SMALLINT COMMENT 'Морозостойкость',
min_party FLOAT COMMENT 'Минимальная партия',
quantity_on_pallet FLOAT COMMENT 'Количество на поддоне',
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
KEY products_catalog_id_idx (catalog_id),
KEY products_manufacturer_id_idx (manufacturer_id)
) COMMENT 'Товары';

ALTER TABLE products ADD COLUMN image varchar(255) AFTER status;
UPDATE products SET image=CONCAT('/upload/',id,'.jpg');

-- Типы пользователей
DROP TABLE IF EXISTS types_users;
CREATE TABLE types_users (
id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
name VARCHAR(100)
) COMMENT 'Типы пользователй';

-- Пользователи
DROP TABLE IF EXISTS users;
CREATE TABLE users (
id INT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
type_user_id INT UNSIGNED NOT NULL COMMENT 'Тип пользователя',
fullname VARCHAR(255) NOT NULL COMMENT 'Полное имя | Наименование',
name VARCHAR(80) COMMENT 'Имя',
lastname VARCHAR(80) COMMENT 'Фамилия',
secondname VARCHAR(80) COMMENT 'Отчество',
email VARCHAR(100) COMMENT 'E-mail',
phone VARCHAR(100) NOT NULL COMMENT 'Телефон(ы)',
sex CHAR(1) COMMENT 'Пол',
birthday DATE COMMENT 'Дата рождения',
legal_address VARCHAR(255) COMMENT 'Юридический адрес',
actual_address VARCHAR(255) COMMENT 'Фактический адрес',
inn VARCHAR(12) UNIQUE COMMENT 'ИНН',
kpp VARCHAR(12) COMMENT 'КПП',
ogrn VARCHAR(13) COMMENT 'ОГРН',
status TINYINT(1) COMMENT 'Статус',
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'Пользователи';

-- Статусы заказа
DROP TABLE IF EXISTS order_statuses;
CREATE TABLE order_statuses (
id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
name VARCHAR(100)
) COMMENT 'Статусы доставки';

-- Типы доставки
DROP TABLE IF EXISTS delivery_types;
CREATE TABLE delivery_types (
id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
name VARCHAR(100)
) COMMENT 'Типы доставки';

-- Заказы
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id INT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY COMMENT 'Номер заказа',
  user_id INT UNSIGNED NOT NULL COMMENT 'Заказчик',
  order_status_id INT UNSIGNED NOT NULL COMMENT 'Статус заказа',
  region_id INT UNSIGNED NOT NULL COMMENT 'Регион доставки',
  delivery_type_id INT UNSIGNED NOT NULL COMMENT 'Тип доставки',
  delivery_address VARCHAR(255) COMMENT 'Адрес доставки',
  order_comment VARCHAR(255) COMMENT 'Комментарий',
  order_sum DECIMAL (12,2) COMMENT 'Сумма заказа',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = 'Заказы';

-- Состав заказов
DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
  order_id INT UNSIGNED NOT NULL COMMENT 'Номер заказа',
  product_id INT UNSIGNED NOT NULL COMMENT 'Товар',
  quantity DECIMAL(12,2) DEFAULT 1 COMMENT 'Количество заказанных позиций',
  price DECIMAL(12,2) COMMENT 'Цена в заказе',
  total DECIMAL(12,2) COMMENT 'Cумма товара в заказе'
) COMMENT = 'Состав заказа';

