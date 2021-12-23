CREATE DATABASE IF NOT EXISTS video_server;
USE video_server;

CREATE TABLE IF NOT EXISTS `users` (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    login_name VARCHAR(64) UNIQUE KEY,
    pwd TEXT
);

CREATE TABLE IF NOT EXISTS `video_info` (
    id VARCHAR(64) PRIMARY KEY NOT NULL,
    author_id INT UNSIGNED,
    name TEXT,
    display_ctime TEXT,
    create_time DATETIME
);

CREATE TABLE IF NOT EXISTS `comments` (
    id VARCHAR(64) PRIMARY KEY NOT NULL,
    video_id VARCHAR(64),
    author_id INT UNSIGNED,
    content TEXT,
    time DATETIME
);

CREATE TABLE IF NOT EXISTS `sessions` (
    session_id TEXT PRIMARY KEY NOT NULL,
    TTL TINYINT,
    login_name VARCHAR(64)
);

