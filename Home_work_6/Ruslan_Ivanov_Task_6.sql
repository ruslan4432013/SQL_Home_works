-- Задание 1: Пусть задан некоторый пользователь. Из всех пользователей соц. сети найдите человека, который больше всех общался с выбранным пользователем (написал ему сообщений).
SELECT from_user_id, COUNT(from_user_id) AS send_message, to_user_id FROM messages WHERE to_user_id = 1 GROUP BY from_user_id ORDER BY send_message DESC LIMIT 1;

-- Задание 2: Подсчитать общее количество лайков, которые получили пользователи младше 10 лет..
SELECT user_id, COUNT(user_id) AS count_likes FROM likes WHERE user_id IN (SELECT user_id FROM profiles WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 10) GROUP BY user_id;

-- Задание 3: Определить кто больше поставил лайков (всего): мужчины или женщины.
SELECT gender, COUNT(gender) AS count_likes FROM profiles WHERE user_id IN (SELECT user_id FROM likes) GROUP BY gender ORDER BY count_likes DESC;
