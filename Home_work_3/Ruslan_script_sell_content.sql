USE vk;

DROP TABLE IF EXISTS buy_content;
DROP TABLE IF EXISTS delivery_content;
DROP TABLE IF EXISTS paid_content;

CREATE TABLE paid_content(
	id SERIAL,
	user_id_created_at BIGINT UNSIGNED NOT NULL,
	create_time_at DATETIME DEFAULT NOW(),
	price BIGINT UNSIGNED NOT NULL,
	type_media BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (type_media) REFERENCES media_types(id),
	FOREIGN KEY (user_id_created_at) REFERENCES users(id)
) COMMENT 'Платный контент';

CREATE TABLE buy_content(
	id SERIAL,
	content_id BIGINT UNSIGNED NOT NULL,
	buyer_user_id BIGINT UNSIGNED NOT NULL,
	seller_user_id BIGINT UNSIGNED NOT NULL,
	sale_time_at DATETIME DEFAULT NOW(),
	birthdat_user_buyer DATETIME,
	eighteen ENUM('YES', 'NO'), 
	FOREIGN KEY (buyer_user_id) REFERENCES users(id),
	FOREIGN KEY (seller_user_id) REFERENCES users(id),
	FOREIGN KEY (content_id) REFERENCES paid_content(id)
) COMMENT 'Покупка контента';

CREATE TABLE delivery_content(
	id SERIAL,
	address_out VARCHAR(250),
	address_in VARCHAR(250),
	product_id BIGINT UNSIGNED NOT NULL,
	buyer_user_id BIGINT UNSIGNED NOT NULL,
	seller_user_id BIGINT UNSIGNED NOT NULL,
	delivery_time_at DATETIME NOT NULL,
	FOREIGN KEY (buyer_user_id) REFERENCES users(id),
	FOREIGN KEY (seller_user_id) REFERENCES users(id),
	FOREIGN KEY (product_id) REFERENCES paid_content(id)
) COMMENT 'Доставка контента';