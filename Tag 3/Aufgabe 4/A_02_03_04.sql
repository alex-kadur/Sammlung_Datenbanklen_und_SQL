CREATE DATABASE A_02_03_04;
USE A_02_03_04;

CREATE TABLE Person
(
    Person_ID INT(11) AUTO_INCREMENT,
    Vorname VARCHAR(255) NOT NULL,
    Nachname VARCHAR(255) NOT NULL,
    Geburtsdatum DATE NOT NULL,
    PRIMARY KEY(Person_ID)
);

CREATE TABLE Ehe
(
    Ehe_ID INT(11) AUTO_INCREMENT,
    Person1_ID INT(11) NOT NULL,
    Person2_ID INT(11) NOT NULL,
    Ehe_Beginn DATE NOT NULL,
    Ehe_Ende DATE NULL,
    PRIMARY KEY(Ehe_ID),
    FOREIGN KEY(Person1_ID) 
    REFERENCES Person(Person_ID),
    FOREIGN KEY(Person2_ID) 
    REFERENCES Person(Person_ID)
);

/*----------*/

ALTER TABLE Person # d1
ADD Anzahl_Ehen_bisher INT(11) NULL;

# Redundanz Anzahl der Ehen laesst sich aus Tabelle Ehe auslesen + Staendige Anpassung Attribut noetig.

ALTER TABLE Person # d2
DROP Anzahl_Ehen_bisher;

ALTER TABLE Ehe # d3
ADD Standesbeamter_ID INT(11) NOT NULL;
ALTER TABLE Ehe
ADD FOREIGN KEY(Standesbeamter_ID)
REFERENCES Person(Person_ID);

INSERT INTO Person(Vorname, Nachname, Geburtsdatum) # e
VALUES
("Andrea", "Alster", "1991-01-01"),
("Bettina", "Becker", "1992-02-02"),
("Charlotte", "Carlson", "1993-03-03"),
("Axel", "Alster", "1994-04-04"),
("Bernd", "Becker", "1995-05-05"),
("Claus", "Caesar", "1996-06-06");

INSERT INTO Ehe(Person1_ID, Person2_ID, Ehe_Beginn, Ehe_Ende, Standesbeamter_ID)
VALUES
(1, 4, "2019-09-09", "2022-02-02", 6),
(2, 5, "2020-12-20", NULL, 3);

UPDATE Person # f1
SET Nachname = "Alster-Schulze"
WHERE Person_ID = 1;

UPDATE Person # f1
SET Nachname = "Alster-Schulze"
WHERE Person_ID = 4;

INSERT INTO Person(Vorname, Nachname, Geburtsdatum) # f2
VALUES
("Egon", "Ermann", "1966-10-21");

INSERT INTO Ehe(Person1_ID, Person2_ID, Ehe_Beginn, Ehe_Ende, Standesbeamter_ID)
VALUES
(3, 6, "2020-12-20", NULL, 7);

UPDATE Ehe # f3
SET Ehe_Ende = "2022-11-11"
WHERE Ehe_ID = 2;

ALTER TABLE Person # f4
CHANGE Geburtsdatum Geburtsdatum DATE NULL;

INSERT INTO Person(Vorname, Nachname, Geburtsdatum)
VALUES
("Doris", "Dahlmann", NULL),
("Doerte", "Wurst", NULL);

INSERT INTO Ehe(Person1_ID, Person2_ID, Ehe_Beginn, Ehe_Ende, Standesbeamter_ID)
VALUES
(8, 9, "2022-03-05", NULL, 6);

UPDATE Person
SET Nachname = "Dahlmann"
WHERE Person_ID = 9;

UPDATE Person # f5
SET Nachname = "Zaesah"
WHERE Person_ID = 6;
















