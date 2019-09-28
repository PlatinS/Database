-- Для таблицы производителей
ALTER TABLE manufacturers
  ADD CONSTRAINT manufacturers_region_id_fk 
    FOREIGN KEY (region_id) REFERENCES regions(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
	
-- Для таблицы товаров
ALTER TABLE products
  ADD CONSTRAINT products_catalog_id_fk 
    FOREIGN KEY (catalog_id) REFERENCES catalogs(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
  ADD CONSTRAINT products_manufacturer_id_fk 
    FOREIGN KEY (manufacturer_id) REFERENCES manufacturers(id)
	ON UPDATE CASCADE,
  ADD CONSTRAINT products_purpose_id_fk 
    FOREIGN KEY (purpose_id) REFERENCES purposes(id)
	ON UPDATE CASCADE,
  ADD CONSTRAINT products_material_id_fk 
    FOREIGN KEY (material_id) REFERENCES materials(id)
	ON UPDATE CASCADE,
  ADD CONSTRAINT products_size_id_fk 
    FOREIGN KEY (size_id) REFERENCES sizes(id)
	ON UPDATE CASCADE,
  ADD CONSTRAINT products_color_id_fk 
    FOREIGN KEY (color_id) REFERENCES colors(id)
	ON UPDATE CASCADE,
  ADD CONSTRAINT products_surface_id_fk 
    FOREIGN KEY (surface_id) REFERENCES surfaces(id)
	ON UPDATE CASCADE,
  ADD CONSTRAINT products_voidness_id_fk 
    FOREIGN KEY (voidness_id) REFERENCES voidness(id)
	ON UPDATE CASCADE;

-- Для таблицы пользователй
ALTER TABLE users
  ADD CONSTRAINT users_type_user_id_fk 
    FOREIGN KEY (type_user_id) REFERENCES types_users(id)
	ON UPDATE CASCADE;
	
-- Для таблицы заказов
ALTER TABLE orders
  ADD CONSTRAINT orders_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
  ADD CONSTRAINT orders_order_status_id_fk 
    FOREIGN KEY (order_status_id) REFERENCES order_statuses(id)
	ON UPDATE CASCADE,
  ADD CONSTRAINT orders_region_id_fk 
    FOREIGN KEY (region_id) REFERENCES regions(id)
	ON UPDATE CASCADE,
  ADD CONSTRAINT orders_delivery_type_id_fk 
    FOREIGN KEY (delivery_type_id) REFERENCES delivery_types(id)
	ON UPDATE CASCADE;
	
-- Для таблицы состав заказов
ALTER TABLE orders_products
  ADD CONSTRAINT orders_products_order_id_fk 
    FOREIGN KEY (order_id) REFERENCES orders(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
  ADD CONSTRAINT  orders_product_id_fk 
    FOREIGN KEY (product_id) REFERENCES products(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
	


