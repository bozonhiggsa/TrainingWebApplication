--DROP TABLE training_web_application.admins;
--DROP TABLE training_web_application.users;
--DROP SCHEMA training_web_application RESTRICT;

CREATE SCHEMA training_web_application;

CREATE TABLE training_web_application.users (
id INT NOT NULL GENERATED BY DEFAULT AS IDENTITY,
login VARCHAR(20) NOT NULL,
password VARCHAR(20) NOT NULL,
name VARCHAR(20) NOT NULL,
lastname VARCHAR(20) NOT NULL,
email VARCHAR(33) NOT NULL,
access Boolean NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE training_web_application.admins (
id INT NOT NULL GENERATED BY DEFAULT AS IDENTITY,
login VARCHAR(20) NOT NULL,
password VARCHAR(20) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO training_web_application.admins (login, password) VALUES ('admin', 'admin');