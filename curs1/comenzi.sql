CREATE TABLE `mydb2023`.`Produse` 
( `id` INT UNSIGNED NOT NULL AUTO_INCREMENT , 
`nume _produs` VARCHAR(100) NOT NULL , 
`descriere` TEXT NULL , 
`pret` DECIMAL(7,2) NOT NULL , 
`stoc` INT NOT NULL DEFAULT '0' , 
`producator` VARCHAR(250) NOT NULL , 
`user_at` INT NOT NULL , 
`data_adaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
PRIMARY KEY (`id`)) ENGINE = InnoDB;



INSERT INTO `Produse` (`id`, `nume _produs`, `descriere`, `pret`, `stoc`, `producator`, `user_at`, `data_adaugare`) 
VALUES (NULL, 'Pix', 'Pix albastru 0.7', '22.5', '10', 'Big ', '1', CURRENT_TIMESTAMP);

UPDATE `Produse` SET `producator` = 'Bic' WHERE `Produse`.`id` = 1;

SELECT * FROM `Produse`
--comentariu
DELETE FROM `Produse` WHERE `Produse`.`id` = "1"


CREATE USER 'mydb2023'@'localhost' 
IDENTIFIED VIA mysql_native_password USING '***';
GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON *.* TO 'mydb2023'@'localhost' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;


CREATE TABLE `js2023`.`jsusers` 
( `id` INT NOT NULL AUTO_INCREMENT , 
`nume` VARCHAR NOT NULL , `prenume` VARCHAR NOT NULL , 
`email` VARCHAR(20) NOT NULL , `telefon` VARCHAR(15) NOT NULL , 
`data_nastere` DATE NOT NULL , `data_adaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , PRIMARY KEY (`id`)) ENGINE = InnoDB;

ALTER TABLE `jsusers` ADD `cnp` CHAR(13) NOT NULL AFTER `data_adaugare`, 
ADD UNIQUE `cnp` (`cnp`);

INSERT INTO `jsusers` (`id`, `nume`, `prenume`, `email`, `telefon`, `data_nastere`, `data_adaugare`, `cnp`) VALUES ('1', 'Popescu', 'Maria', 'maria@popescu.ro', '0722345678', '94/07/12', '2023-05-04 05:20:28', '2940712325678');