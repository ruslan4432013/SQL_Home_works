SELECT CONCAT(u.firstname, ' ', u.lastname) as Name, 
YEAR(CURRENT_DATE) - YEAR(p.birthday) AS `Year`, 
tp.type_subscription AS `Type`,
tp.price_subscription AS Price
FROM users AS u
JOIN profiles AS p on u.id = p.user_id
JOIN paid_subscriptions AS pd on pd.user_id = u.id
JOIN type_subscription AS tp on tp.id = pd.type_subscription_id
ORDER BY `Year` DESC;

SELECT COUNT(media.filename) Count_films, 
GROUP_CONCAT(media.filename SEPARATOR ', ') 
Films, mt.`type`
FROM media
JOIN media_types mt ON mt.id = media.media_type_id
WHERE mt.id = 1
GROUP BY media.media_type_id;