-- 4. (по желанию) Пусть имеется любая таблица с календарным полем created_at. 
-- Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.
use sample;

PREPARE del_prod from "DELETE FROM products ORDER BY created_at LIMIT ?";
SET @ROWS = (SELECT COUNT(*)-5 FROM products);
EXECUTE del_prod USING @ROWS;

SELECT * FROM products;