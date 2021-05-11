create database mydb;

use mydb;

CREATE TABLE IF NOT EXISTS Post
(
    subject VARCHAR(50) NOT NULL,
    name VARCHAR(20),
    email VARCHAR(30),
    category VARCHAR(20),
    message TEXT,
    PRIMARY KEY (subject)
)default CHARSET = utf8;

desc Post;

INSERT INTO Post VALUES('Test1', 'ByoungKook','gukman97@gmail.com','IT','안녕하세요 테스트 1입니다.');
INSERT INTO Post VALUES('Test2', 'ByoungKook','gukman97@gmail.com','IT','안녕하세요 테스트 2입니다.');
INSERT INTO Post VALUES('Test3', 'ByoungKook','gukman97@gmail.com','IT','안녕하세요 테스트 3입니다.');


Drop table post;
