-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное
-- значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля
-- были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.

DROP TRIGGER IF EXISTS nullTrigger;
DELIMITER //
CREATE TRIGGER nullTrigger BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	IF(ISNULL(NEW.name) AND ISNULL(NEW.description)) THEN
		SIGNAL SQLSTATE '80008' SET MESSAGE_TEXT = 'Оба значения не могут быть NULL';
	END IF;
END //
DELIMITER ;

INSERT INTO products (name, description, price, catalog_id)
VALUES (NULL, NULL, 5000, 2); -- проверяем, сработал ли триггер
