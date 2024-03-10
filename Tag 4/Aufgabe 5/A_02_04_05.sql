CREATE DATABASE A_02_04_05;
USE A_02_04_05;

CREATE TABLE Person
(
    Person_ID INT(11) AUTO_INCREMENT,
    Vorname VARCHAR(255) NOT NULL,
    Nachname VARCHAR(255) NOT NULL,
    Geburtsjahr INT(11) NOT NULL,
    Strasse VARCHAR(255) NOT NULL,
    Hausnummer VARCHAR(255) NOT NULL,
    PLZ INT(11) NOT NULL,
    Ort VARCHAR(255) NOT NULL,
    PRIMARY KEY(Person_ID)
);

CREATE TABLE Lied
(
    Lied_ID INT(11) AUTO_INCREMENT,
    Titel VARCHAR(255) NOT NULL,
    Erscheinungsjahr INT(11) NOT NULL,
    PRIMARY KEY(Lied_ID)
);

CREATE TABLE Person_Lied
(
    Person_ID INT(11),
    Lied_ID INT(11),
    FOREIGN KEY(Person_ID) REFERENCES Person(Person_ID),
    FOREIGN KEY(Lied_ID) REFERENCES Lied(Lied_ID)
);

/*----------*/

