-- 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, 
-- catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы,
-- идентификатор первичного ключа и содержимое поля name.

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	created_at DATETIME NOT NULL,
	table_name VARCHAR(45) NOT NULL,
	str_id BIGINT UNSIGNED NOT NULL,
	name_value VARCHAR(45) NOT NULL
) ENGINE = ARCHIVE;


-- TRIGGER ON users
DROP TRIGGER IF EXISTS log_users;
DELIMITER //
CREATE TRIGGER log_users AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, table_name, str_id, name_value)
	VALUES (NOW(), 'users', NEW.id, NEW.name);
END //
DELIMITER ;


-- TRIGGER catalogs 
DROP TRIGGER IF EXISTS log_catalogs;
DELIMITER //
CREATE TRIGGER log_catalogs AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, table_name, str_id, name_value)
	VALUES (NOW(), 'catalogs', NEW.id, NEW.name);
END //
DELIMITER ;


-- TRIGGER products 
DROP TRIGGER IF EXISTS log_products;
DELIMITER //
CREATE TRIGGER log_products AFTER INSERT ON products
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, table_name, str_id, name_value)
	VALUES (NOW(), 'products', NEW.id, NEW.name);
END //
DELIMITER ;


-- Проверки триггеров

INSERT INTO users (name, birthday_at)
VALUES ('Hren', '1999-01-01');

INSERT INTO users (name, birthday_at)
VALUES ('Vasya', '1990-01-01'),
		('Petya', '2203-01-01'),
		('Artem', '2103-01-01'),
		('John', '0000-00-01');

INSERT INTO catalogs (name)
VALUES ('Оперативка'),
		('Видеокарта'),
		('Процессор');




INSERT INTO products (name, description, price, catalog_id)
VALUES ('KINGSTON', 'Оперативка', 3000.00, 13),
		('NVidia GTX 2070', 'Видеокарта', 45000.00, 14),
		('Intel Core I9', 'Процессор', 69999.00, 15);

SELECT * FROM users;	
SELECT * FROM catalogs;
SELECT * FROM products;
SELECT * FROM logs;

-- 2. (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.


DROP TABLE IF EXISTS test_users; 
CREATE TABLE test_users (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	birthday_at DATE,
	`created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
 	`updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


DROP PROCEDURE IF EXISTS insert_into_users ;
delimiter //
CREATE PROCEDURE insert_into_users ()
BEGIN
	DECLARE j INT DEFAULT 0;
	WHILE j < 100 DO -- Здесь можно поставить и миллион, только запрос будет очень долго выполнятся
		INSERT INTO test_users(name, birthday_at) VALUES (CONCAT('user_', j), NOW());
		SET j = j + 1;
	END WHILE;
END //
delimiter ;


-- Проверка
SELECT * FROM test_users;

CALL insert_into_users();

SELECT * FROM test_users LIMIT 3;