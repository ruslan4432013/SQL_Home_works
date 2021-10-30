-- 2. Создайте представление, которое выводит название name товарной позиции из таблицы products 
-- и соответствующее название каталога name из таблицы catalogs.

CREATE VIEW name_products AS
select products.name AS products, catalogs.name from products 
join catalogs on catalogs.id = products.catalog_id;

select * from name_products;