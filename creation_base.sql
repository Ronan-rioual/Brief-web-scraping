CREATE DATABASE IF NOT EXISTS db_finance;

USE db_finance;

CREATE TABLE donnees_finance (
	titre VARCHAR(255),
	CA INT(11),
	EBE INT(11),
	RO INT(11),
	annee INT(11)
);

LOAD DATA LOCAL INFILE 'donnees_financieres.csv'
INTO TABLE donnees_finance
FIELDS TERMINATED BY ','