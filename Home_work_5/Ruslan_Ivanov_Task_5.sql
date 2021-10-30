-- Задание 1: Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.

UPDATE users SET created_at = NOW(), updated_at = NOW(); -- заполняет в таблице users плоля created_at и updated_at текущей датой и временем

-- Задание 2: Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате "20.10.2017 8:10". 
-- Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.

/*ALTER TABLE users ADD created_at_dt DATETIME;-- добавляем поля с типом DATETIME 
ALTER TABLE users ADD updated_at_dt DATETIME;-- добавляем поля с типом DATETIME
UPDATE users
SET created_at_dt = STR_TO_DATE(created_at, '%d.%m.%Y %h:%i'), -- в созданные поля, используя функцию преобразования...
	updated_at_dt = STR_TO_DATE(updated_at, '%d.%m.%Y %h:%i'); -- преобразуем значения старых полей в формат DATETIME
ALTER TABLE users 
	DROP created_at, DROP updated_at, -- в этом блоке удаляем старые поля
	RENAME COLUMN created_at_dt TO created_at, RENAME COLUMN updated_at_dt TO updated_at; -- переименовываем поля
*/
-- Задание 3 : В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы. 
-- Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
-- Однако, нулевые запасы должны выводиться в конце, после всех записей.

INSERT INTO
    storehouses_products (storehouse_id, product_id, value)
VALUES
    (1, 1, 0),
    (1, 3, 2500),
    (1, 5, 0),
    (1, 7, 30),
    (1, 8, 500),
    (1, 8, 500);
   
SELECT value FROM storehouses_products ORDER BY IF(value > 0, 0, 1), value;

-- Задание 4: Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. Месяцы заданы в виде списка английских названий ('may', 'august')

SELECT name, birthday_at FROM users WHERE MONTHNAME(birthday_at) IN ('may', 'august');

-- Задание 5: Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN.

SELECT* FROM catalogs WHERE id IN (3, 1, 2) ORDER BY FIELD(id, 3, 1, 2);





