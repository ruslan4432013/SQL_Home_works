DROP VIEW IF EXISTS name_info;
CREATE OR REPLACE VIEW name_info AS
SELECT CONCAT(u.firstname, ' ', u.lastname) as Name, 
YEAR(CURRENT_DATE) - YEAR(p.birthday) AS `Year`, 
tp.type_subscription AS `Type`,
tp.price_subscription AS Price
FROM users AS u
JOIN profiles AS p on u.id = p.user_id
JOIN paid_subscriptions AS pd on pd.user_id = u.id
JOIN type_subscription AS tp on tp.id = pd.type_subscription_id
ORDER BY `Year` DESC;

DROP VIEW IF EXISTS all_values;
CREATE OR REPLACE VIEW all_values AS
SELECT u.*, 
p.*, 
pd.type_subscription_id, 
tp.type_subscription, 
tp.price_subscription, 
mr.rate, 
md.required_subscription_type, 
cf.actors_id
FROM users AS u
JOIN profiles AS p on u.id = p.user_id
JOIN paid_subscriptions AS pd on pd.user_id = u.id
JOIN type_subscription AS tp on tp.id = pd.type_subscription_id
JOIN media_ratings AS mr on mr.user_id = u.id
JOIN media AS md on md.id = mr.media_id
LEFT JOIN command_film AS cf on cf.media_id = md.id;



SELECT * FROM name_info;
SELECT COUNT(name), `type` 
FROM name_info
GROUP BY `type`;

