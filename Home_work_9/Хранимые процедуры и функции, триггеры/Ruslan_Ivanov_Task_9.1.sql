-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие,
-- в зависимости от текущего времени суток.
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро",
-- с 12:00 до 18:00 функция должна возвращать фразу "Добрый день",
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

DROP PROCEDURE IF EXISTS hello;
DELIMITER //
CREATE PROCEDURE vk.hello()
BEGIN
  IF ( HOUR(CURTIME()) BETWEEN 6 AND 12) THEN
	SELECT 'Доброе утро';
	
  ELSEIF ( HOUR(CURTIME()) BETWEEN 12 AND 18) THEN
	SELECT 'Добрый вечер';
	
  ELSEIF ( HOUR(CURTIME()) BETWEEN 0 AND 6) THEN
	SELECT 'Доброй ночи';
  END IF;
END//

DELIMITER ;

CALL hello();