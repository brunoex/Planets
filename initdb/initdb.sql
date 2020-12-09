CREATE DATABASE IF NOT EXISTS planets;

USE planets;

CREATE TABLE planets (
    id INT AUTO_INCREMENT NOT NULL, 
    name VARCHAR(255) NOT NULL, 
    day INT DEFAULT NULL, 
    month INT DEFAULT NULL, 
    PRIMARY KEY(id)
    ) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB;

INSERT INTO `planets`.`planets` (`name`, `day`, `month`) VALUES ('Red planet', '42', '10'), ('Blue planet', '18', '18');
