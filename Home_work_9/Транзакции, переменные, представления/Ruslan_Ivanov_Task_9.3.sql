-- 3. (по желанию) Пусть имеется таблица с календарным полем created_at. 
-- В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. 
-- Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, 
-- если дата присутствует в исходном таблице и 0, если она отсутствует.

DROP TABLE IF EXISTS task3;
CREATE TABLE task3 (
  id SERIAL PRIMARY KEY,
  created_at DATE);
INSERT INTO task3 VALUES
  (NULL, '2018-08-01'), (NULL, '2018-08-04'), (NULL, '2018-08-16'), (NULL, '2018-08-17');

CREATE TEMPORARY TABLE days_aug (days int);

INSERT INTO days_aug VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10), 
							(11), (12),(13),(14), (15), (16), (17), (18), (19), (20),
                            (21), (22), (23), (24), (25), (26), (27), (28), (29), (30), (31);
                            
SET @start_aug = '2018-07-31';

SELECT @start_aug + INTERVAL days DAY AS date_aug,
	   CASE WHEN task3.created_at IS NULL THEN 0 ELSE 1 END AS v1 FROM days_aug
LEFT JOIN task3 ON @start_aug + INTERVAL days DAY = task3.created_at
ORDER BY date_aug;                     