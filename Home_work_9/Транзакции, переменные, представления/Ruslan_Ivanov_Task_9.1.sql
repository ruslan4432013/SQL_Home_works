-- 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. 
-- Используйте транзакции.

DROP TABLE IF EXISTS sample.users;
CREATE TABLE sample.users( 
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	birthday_at DATE,
	created_at DATETIME,
	updated_at DATETIME on update CURRENT_TIMESTAMP
);
DROP PROCEDURE IF EXISTS shop.sp_mv_user
DELIMITER $$
$$
CREATE PROCEDURE shop.sp_mv_user(for_user_id BIGINT UNSIGNED, OUT tran_result VARCHAR(200))
BEGIN
	DECLARE `_rollback` BIT DEFAULT 0;
	DECLARE code VARCHAR(100);
	DECLARE error_string VARCHAR(100);
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
	begin
		SET `_rollback` = 1;
		GET stacked DIAGNOSTICS CONDITION 1
			code = RETURNED_SQLSTATE, error_string = MESSAGE_TEXT;
		
		SET tran_result := CONCAT ('Error occured. Code: ', code, '. Text: ', error_string);
	end;
	START TRANSACTION;
	INSERT INTO sample.users
	SELECT * FROM shop.users WHERE id = for_user_id;
	IF `_rollback` = 1 THEN
		ROLLBACK;
	ELSE
		SET tran_result = 'COMMIT';
		COMMIT;
	END IF;
END$$
DELIMITER ;

call shop.sp_mv_user(1, @tran_result);
select @tran_result;
SELECT * FROM shop.users;
SELECT * FROM sample.users;