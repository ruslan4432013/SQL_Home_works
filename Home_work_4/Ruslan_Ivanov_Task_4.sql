INSERT IGNORE INTO users (id, firstname, lastname, email, phone) VALUES
	(1, 'Vasiliy', 'Petrovich', 'vasiliy@mail.net', '89999999999'),
	(2, 'Egor', 'Petrovich', 'vasiliy1@mail.net', '89999199999'),
	(3, 'Andrey', 'Petrovich', 'vasiliy2@mail.net', '89999299999'),
	(4, 'Nikolay', 'Petrovich', 'vasiliy3@mail.net', '89999399999'),
	(5, 'Vladimir', 'Petrovich', 'vasiliy4@mail.net', '89999499999'),
	(6, 'Vasiliy', 'Petrovich', 'vasiliy5@mail.net', '89999599999'),
	(7, 'Vasiliy', 'Petrovich', 'vasiliy6@mail.net', '89999699999'),
	(8, 'Saha', 'Petrovich', 'vasiliy7@mail.net', '89999799999'),
	(9, 'John', 'Petrovich', 'vasiliy8@mail.net', '89999899999'),
	(10, 'Vasiliy', 'Petrovich', 'vasiliy9@mail.net', '89921999999'),
	(11, 'Vasiliy', 'Petrovich', 'vasili1y@mail.net', '89992999999'),
	(12, 'Vasiliy', 'Petrovich', 'vasili2y@mail.net', '89999399999'),
	(13, 'Vasiliy', 'Petrovich', 'vasili3y@mail.net', '89999949999'),
	(14, 'Vasiliy', 'Petrovich', 'vasili4y@mail.net', '89999999999'),
	(15, 'Terk', 'Petrovich', 'vasili5y@mail.net', '89999999132'),
	(16, 'Vasiliy', 'Petrovich', 'vasili6y@mail.net', '89999922999'),
	(17, 'Junitor', 'Petrovich', 'vasili7y@mail.net', '89999993999'),
	(18, 'Vasiliy', 'Petrovich', 'vasili8y@mail.net', '89999129999'),
	(19, 'Alena', 'Petrovich', 'vasili9y@mail.net', '89999991519'),
	(20, 'Vasiliy', 'Petrovich', 'vasil1iy@mail.net', '89999299999'),
	(21, 'Vasiliy', 'Petrovich', 'vasi1iy@mail.net', '85399929999')
;

INSERT IGNORE INTO communities (name, admin_user_id) VALUES
	('Vasiliy', 1),
	('Vasiliy', 2),
	('Vasiliy', 3),
	('Vasiliy', 4),
	('Vasiliy', 5),
	('Vasiliy', 6),
	('Vasiliy', 7),
	('Vasiliy', 8),
	('Vasiliy', 9),
	('Vasiliy', 10),
	('Vasiliy', 11)	
;

INSERT IGNORE INTO friend_requests (initiator_user_id, target_user_id, status) VALUES
	(1, 2, 'requested'),
	(1, 3, 'requested'),
	(1, 4, 'requested'),
	(1, 5, 'requested'),
	(1, 6, 'requested'),
	(1, 7, 'requested'),
	(1, 8, 'requested'),
	(1, 9, 'requested'),
	(2, 2, 'requested'),
	(3, 2, 'requested'),
	(4, 2, 'requested'),
	(5, 2, 'requested'),
	(6, 2, 'requested')
;

INSERT IGNORE INTO media_types (name) VALUES
	('txt'),
	('texet'),
	('video'),
	('film'),
	('json'),
	('json-big'),
	('pictures'),
	('pictures'),
	('pictures'),
	('pictures'),
	('pictures'),
	('pictures'),
	('pictures')
;

INSERT IGNORE INTO media (media_type_id, user_id, body, filename, `size`) VALUES
	(1, 1, 'blablabla...', 'file_name', 22),
	(1, 2, 'blablabla...', 'file_name', 221),
	(1, 3, 'blablabla...', 'file_name', 222),
	(1, 4, 'blablabla...', 'file_name', 223),
	(1, 5, 'blablabla...', 'file_name', 224),
	(1, 6, 'blablabla...', 'file_name', 225),
	(1, 7, 'blablabla...', 'file_name', 226),
	(1, 8, 'blablabla...', 'file_name', 227),
	(1, 9, 'blablabla...', 'file_name', 228),
	(2, 1, 'blablabla...', 'file_name', 221),
	(2, 2, 'blablabla...', 'file_name', 222),
	(2, 3, 'blablabla...', 'file_name', 223),
	(2, 4, 'blablabla...', 'file_name', 224),
	(2, 5, 'blablabla...', 'file_name', 225),
	(2, 6, 'blablabla...', 'file_name', 227),
	(2, 7, 'blablabla...', 'file_name', 229),
	(2, 8, 'blablabla...', 'file_name', 220),
	(2, 9, 'blablabla...', 'file_name', 228),
	(3, 1, 'blablabla...', 'file_name', 226),
	(3, 2, 'blablabla...', 'file_name', 223)
;

INSERT IGNORE INTO likes (user_id, media_id) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 9),
	(2, 1),
	(2, 2),
	(2, 3),
	(2, 4),
	(2, 5),
	(2, 6),
	(2, 7),
	(2, 8),
	(2, 9),
	(3, 1),
	(3, 2)
;

INSERT IGNORE INTO messages (from_user_id, to_user_id, body) VALUES
	(1, 1, 'blablabla...'),
	(1, 2, 'blablabla...'),
	(1, 3, 'blablabla...'),
	(1, 4, 'blablabla...'),
	(1, 5, 'blablabla...'),
	(1, 6, 'blablabla...'),
	(1, 7, 'blablabla...'),
	(1, 8, 'blablabla...'),
	(1, 9, 'blablabla...'),
	(2, 1, 'blablabla...'),
	(2, 2, 'blablabla...'),
	(2, 3, 'blablabla...'),
	(2, 4, 'blablabla...'),
	(2, 5, 'blablabla...'),
	(2, 6, 'blablabla...'),
	(2, 7, 'blablabla...'),
	(2, 8, 'blablabla...'),
	(2, 9, 'blablabla...'),
	(3, 1, 'blablabla...'),
	(3, 2, 'blablabla...')
;

INSERT IGNORE INTO photos (album_id, media_id) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 9),
	(2, 1),
	(2, 2),
	(2, 3),
	(2, 4),
	(2, 5),
	(2, 6),
	(2, 7),
	(2, 8),
	(2, 9),
	(3, 1),
	(3, 2)
;

INSERT IGNORE INTO profiles (user_id, gender, birthday, photo_id, hometown) VALUES
	(1, 'М', '2010-01-01', 1, 'Moscow'),
	(2, 'Ж', '2000-01-01', 2, 'Moscow'),
	(3, 'М', '2010-01-01', 3, 'Moscow'),
	(4, 'Ж', '2010-01-01', 4, 'Moscow'),
	(5, 'М', '2001-01-01', 5, 'Moscow'),
	(6, 'Ж', '2012-01-01', 6, 'Moscow'),
	(7, 'М', '2013-01-01', 7, 'Moscow'),
	(8, 'Ж', '2014-01-01', 8, 'Moscow'),
	(9, 'Ж', '2015-01-01', 9, 'Moscow'),
	(10, 'М', '2016-01-01', 10, 'Moscow'),
	(11, 'Ж', '2017-01-01', 11, 'Moscow'),
	(12, 'М', '2018-01-01', 12, 'Moscow')
;

INSERT IGNORE INTO users_communities (user_id, community_id) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 9),
	(2, 1),
	(2, 2),
	(2, 3),
	(2, 4),
	(2, 5),
	(2, 6),
	(2, 7),
	(2, 8),
	(2, 9),
	(3, 1),
	(3, 2)
;

INSERT IGNORE INTO photo_albums (name, user_id) VALUES
	('weekend', 1),
	('Moscow', 2),
	('party', 3),
	('house', 4),
	('Moscow', 5),
	('Vasiliy', 6),
	('Vasiliy', 7),
	('party', 8),
	('weekend', 9),
	('party', 10),
	('Vasiliy', 11)	
;

SELECT DISTINCT firstname FROM users ORDER BY firstname; -- выводит уникальные значения сортированные в алф. порядке

ALTER TABLE profiles DROP is_active; -- удаляет столбец is_active в таблице profiles, если он существует
ALTER TABLE profiles ADD is_active BOOL DEFAULT TRUE; -- добавляет столбец is_active в таблицу profiles с типом BOOL значением по-умолчанию TRUE
SELECT is_active FROM profiles; -- проверяем, появился ли столбец в таблице profiles

UPDATE profiles SET is_active = FALSE WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 18; -- меняем значение ээ где в строке человек младше 18
SELECT * FROM profiles; -- проверяем, сработало ли условие

DELETE FROM messages WHERE NOW() < created_at; -- удаляем сообщения из будущего