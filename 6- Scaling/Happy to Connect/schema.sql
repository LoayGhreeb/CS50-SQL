-- crimson

CREATE TABLE `Users` (
    `username` VARCHAR(32),
    `first_name` VARCHAR(32) NOT NULL,
    `last_name` VARCHAR(32) NOT NULL,
    `password` VARCHAR(32) NOT NULL,
    PRIMARY KEY (`username`)
);

CREATE TABLE `Schools` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL,
    `type` ENUM('Primary', 'Secondary', 'Higher Education') NOT NULL,
    `location` VARCHAR(32) NOT NULL,
    `year` YEAR NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `Companies` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL,
    `industry` ENUM('Technology', 'Education', 'Business') NOT NULL,
    `location` VARCHAR(32) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `UserConnections`(
    `User_A` VARCHAR(32),
    `User_B` VARCHAR(32),
    FOREIGN KEY (`User_A`) REFERENCES `Users`(`username`),
    FOREIGN KEY (`User_B`) REFERENCES `Users`(`username`)
);

CREATE TABLE `SchoolConnections`(
    `school_id` INT UNSIGNED,
    `username` VARCHAR(32),
    `start_date` DATE NOT NULL,
    `end_date` DATE,
    `type` ENUM ('BA', 'MA', 'PhD') NOT NULL,
    FOREIGN KEY (`school_id`) REFERENCES `Schools`(`id`),
    FOREIGN KEY (`username`) REFERENCES `Users`(`username`)
);

CREATE TABLE `CompanyConnections` (
    `company_id` INT UNSIGNED,
    `username` VARCHAR(32),
    `start_date` DATE NOT NULL,
    `end_date` DATE,
    FOREIGN KEY (`company_id`) REFERENCES `Companies`(`id`),
    FOREIGN KEY (`username`) REFERENCES `Users`(`username`)
);
