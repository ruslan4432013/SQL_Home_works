DROP DATABASE IF EXISTS example;
CREATE DATABASE example;

USE example
DROP TABLE IF EXISTS users;
CREATE TABLE users(
id INT UNSIGNED,
name VARCHAR(255) COMMENT 'Имя пользователя'
) COMMENT = 'Пользователи';