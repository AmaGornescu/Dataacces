CREATE SCHEMA `universitate2023` DEFAULT CHARACTER SET utf8 ;


CREATE TABLE `universitate2023`.`utilizatori` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nume` VARCHAR(45) NOT NULL,
  `prenume` VARCHAR(45) NOT NULL,
  `email` VARCHAR(145) NULL,
  `telefon` CHAR(10) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;



CREATE SCHEMA `magazin2023` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE `magazin2023`.`magazin` (
  `idprodus` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `numep` VARCHAR(45) NOT NULL,
  `cantitate` VARCHAR(45) NOT NULL,
  `idfirma` VARCHAR(45) NOT NULL,
  `firma` VARCHAR(45) NOT NULL,
  `adresafirma` VARCHAR(500) NOT NULL,
  `modelp` VARCHAR(45) NOT NULL,
  `stocp` VARCHAR(45) NOT NULL,
  `pret` DECIMAL(7,2) NOT NULL,
  `categoriep` VARCHAR(45) NOT NULL,
  `descrierep` TINYTEXT NULL,
  `data_addp` DATE NULL,
  PRIMARY KEY (`idprodus`),
  UNIQUE INDEX `idfirma_UNIQUE` (`idfirma` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


INSERT INTO `magazin2023`.`magazin` (`idprodus`, `numep`, `cantitate`, `idfirma`, `firma`, `adresafirma`, `modelp`, `stocp`, `pret`, `categoriep`, `descrierep`, `data_addp`) VALUES ('1', 'Popescu', '25', '25', 'bic', 'bucuresti', 'mecanic', '100', '3', 'pix', 'albastru', '23/05/01');
INSERT INTO `magazin2023`.`magazin` (`idprodus`, `numep`, `cantitate`, `idfirma`, `firma`, `adresafirma`, `stocp`, `pret`, `categoriep`, `descrierep`, `data_addp`) VALUES ('2', 'Ionescu', '3', '21', 'aaaa', 'ploiesti', '23', '4', 'creion', 'negru', '23/05/09');

CREATE SCHEMA `facultate2023` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE `facultate2023`.`studenti` (
  `idstudent` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nume` VARCHAR(45) NOT NULL,
  `prenume` VARCHAR(45) NOT NULL,
  `grupa` VARCHAR(45) NULL,
  `email` VARCHAR(145) NULL,
  `data_add` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  PRIMARY KEY (`idstudent`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `nume_unic` (`nume` ASC, `prenume` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


CREATE TABLE `facultate2023`.`studenti` (
  `idstudent` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nume` VARCHAR(45) NOT NULL,
  `prenume` VARCHAR(45) NOT NULL,
  `grupa` SET('1', '2', '3', '4') NULL,
  `email` VARCHAR(145) NULL,
  `data_add` VARCHAR(45) NULL,
  `status` ENUM('admis', 'respins', 'neevaluat') DEFAULT 'neevaluat',
  PRIMARY KEY (`idstudent`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) ,
  UNIQUE INDEX `nume_unic` (`nume` ASC, `prenume` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SELECT COUNT(id_curs) AS nr_cursuri, an FROM cursuri GROUP BY  an HAVING nr_cursuri<=5;

SELECT COUNT(id_curs) AS nr_cursuri, an FROM cursuri GROUP BY  an HAVING nr_cursuri<=5;

SELECT NOW();
-- comentariu
SELECT * FROM student;

SELECT titlu_curs FROM cursuri;

SELECT nume,prenume FROM student;

SELECT COUNT(id) AS nr, an FROM student GROUP BY an;

SELECT  SUM(bursa) AS total, an FROM student WHERE bursa IS NOT NULL GROUP BY an;

UPDATE student SET status='bursier' WHERE bursa IS NOT NULL;

SELECT CONCAT(nume, ' ', prenume) full_name FROM universitate.student;
