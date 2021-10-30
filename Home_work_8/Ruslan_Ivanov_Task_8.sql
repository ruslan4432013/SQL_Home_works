-- Задание 1: Пусть задан некоторый пользователь. Из всех пользователей соц. сети найдите человека, который больше всех общался с выбранным пользователем (написал ему сообщений)

SELECT from_user_id, COUNT(from_user_id) as cnt_messages, to_user_id
FROM users 
JOIN messages 
ON users.id = messages.to_user_id 
WHERE to_user_id = 1
GROUP BY from_user_id
ORDER BY cnt_messages DESC;

-- Задание 2: Подсчитать общее количество лайков, которые получили пользователи младше 10 лет..

SELECT 
	likes.user_id, 
	COUNT(likes.user_id) AS count_likes 
FROM likes
JOIN profiles 
ON profiles.user_id = likes.user_id
GROUP BY likes.user_id
ORDER BY count_likes DESC;

-- Задание 3: Определить кто больше поставил лайков (всего): мужчины или женщины.

SELECT 
    CASE(gender)
        WHEN 'm' THEN 'Мужской'
        WHEN 'f' THEN 'Женский'
        ELSE 'нет'
    END as gender
    , COUNT(*) as 'Кол-во:' 
FROM profiles 
JOIN likes
ON profiles.user_id = likes.user_id
GROUP BY gender
ORDER BY 'Кол-во:' DESC;
   







