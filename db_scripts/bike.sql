DROP DATABASE IF EXISTS `bike.db`;

CREATE DATABASE `bike.db`;

 CREATE USER 'bike'@'localhost' IDENTIFIED BY 'bike';
 GRANT ALL ON *.* TO 'bike'@'localhost';
 FLUSH PRIVILEGES;

USE `bike.db` ;

CREATE TABLE IF NOT EXISTS `bike.db`.`bike`(
        `id` BIGINT NOT NULL,
        `contact` BOOLEAN NOT NULL,
        `email` VARCHAR(255),
        `model` VARCHAR(255),
        `name` VARCHAR(255),
        `phone` VARCHAR(255),
        `purchase_date` DATETIME,
        `purchase_price` NUMERIC,
        `serial_number` VARCHAR(255),
        PRIMARY KEY (id)
    );

CREATE TABLE
    hibernate_sequence
    (
        next_val BIGINT
    );

INSERT INTO bike (id, contact, email, model, name, phone, purchase_date, purchase_price)
  VALUES (1, 1, 'jeff@bikes.com', 'Globo MTB 29 Full Suspension', 'Jeff Miller', '328-443-5555', '2004-05-23T14:25:10', '1100');
INSERT INTO bike (id, contact, email, model, name, phone, purchase_date, purchase_price)
  VALUES (2, 0, 'samantha@bikes.com', 'Globo Carbon Fiber Race Series', 'Samantha Davis', '448-397-5555', '2004-05-23T14:25:10', '1999');
INSERT INTO bike (id, contact, email, model, name, phone, purchase_date, purchase_price)
  VALUES (3, 1, 'dave@bikes.com', 'Globo Time Trial Blade', 'Dave Warren', '563-891-5555', '2004-05-23T14:25:10', '2100');

INSERT INTO hibernate_sequence (next_val) VALUES (4);