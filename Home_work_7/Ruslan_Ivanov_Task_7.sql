-- Подготовка таблицы к 3 дз
-- DROP TABLE IF EXISTS flights;
-- DROP TABLE IF EXISTS cities;
-- 
-- CREATE TABLE IF NOT EXISTS flights(
-- 	id SERIAL PRIMARY KEY,
-- 	`from` VARCHAR(50) NOT NULL COMMENT 'en', 
-- 	`to` VARCHAR(50) NOT NULL COMMENT 'en'
-- );
-- 
-- CREATE TABLE  IF NOT EXISTS cities(
-- 	label VARCHAR(50) PRIMARY KEY COMMENT 'en', 
-- 	name VARCHAR(50) COMMENT 'ru'
-- );
-- 
-- ALTER TABLE flights
-- ADD CONSTRAINT fk_from_label
-- FOREIGN KEY(`from`)
-- REFERENCES cities(label);
-- 
-- ALTER TABLE flights
-- ADD CONSTRAINT fk_to_label
-- FOREIGN KEY(`to`)
-- REFERENCES cities(label);
-- 
-- INSERT INTO cities(label, name) VALUES
-- 	('moscow', 'Москва'),
-- 	('irkutsk', 'Иркутск'),
-- 	('novgorod', 'Новгород'),
-- 	('kazan', 'Казань'),
-- 	('omsk', 'Омск');
-- 
-- INSERT INTO flights(`from`, `to`) VALUES
-- 	('moscow', 'omsk'),
-- 	('novgorod', 'kazan'),
-- 	('irkutsk', 'moscow'),
-- 	('omsk', 'irkutsk'),
-- 	('moscow', 'kazan');



-- Задание 1: Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

-- SELECT 
-- 	u.id AS user_id, u.name,
-- 	o.id AS order_id
-- FROM 
-- 	users AS u
-- RIGHT JOIN
-- 	orders AS o 
-- ON
-- 	u.id = o.user_id;

-- Задание 2: Выведите список товаров products и разделов catalogs, который соответствует товару.

-- SELECT 
-- 	p.id, p.name, p.price,
-- 	c.id AS cat_id,
-- 	c.name AS catalog
-- FROM
-- 	products AS p
-- JOIN
-- 	catalogs AS c
-- ON 
-- 	p.catalog_id = c.id; 

-- Задание 3: Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское. 
-- Выведите список рейсов flights с русскими названиями городов.
SELECT id, c1.name as `from`, c2.name as `to`
FROM flights
JOIN cities as c1
ON `from` = c1.label
JOIN cities as c2
ON `to` = c2.label
ORDER BY id;
















