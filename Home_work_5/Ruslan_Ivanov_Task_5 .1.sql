-- Задание 1: Подсчитайте средний возраст пользователей в таблице users.

SELECT ROUND(AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())), 0) AS `AVG_age` FROM users;
-- Используя функцию avg ищем среднее значение из возрастов пользователя, функция TIMESTAMPDIFF, и округляем через ROUND

-- Задание 2: Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.***
-- Cледует учесть, что необходимы дни недели текущего года, а не года рождения

SELECT
    DAYNAME(CONCAT(YEAR(NOW()), '-', SUBSTRING(birthday_at, 6, 10))) AS week_day_of_birthday_in_this_Year,
-- Используя функцию DAYNAME получаем день недели для текущего года используя YEAR(NOW()), месяц и день рождения SUBSTRING(birthday_at, 6, 10)
-- Через функцию CONCAT преобразовываем в корректный вид для функции DAYNAME    
    COUNT(*) AS amount_of_birthday -- в связке с GROUP BY функция COUNT возвращает результат для каждого из группы
FROM
    users
GROUP BY 
    week_day_of_birthday_in_this_Year
ORDER BY
	amount_of_birthday DESC; -- сортируем в поярдке убывания
	
-- Задание 3: Подсчитайте произведение чисел в столбце таблицы
	
SELECT ROUND(exp(SUM(ln(id))), 0) AS factorial FROM storehouses_products;