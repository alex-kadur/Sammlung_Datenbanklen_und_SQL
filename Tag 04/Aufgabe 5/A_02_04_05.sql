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

ALTER TABLE Lied 
ADD Person_ID INT(11) NOT NULL;

ALTER TABLE Lied
ADD FOREIGN KEY(Person_ID) REFERENCES Person(Person_ID);

/*----------*/

INSERT INTO Person(Vorname, Nachname, Geburtsjahr, Strasse, Hausnummer, PLZ, Ort)
VALUES
("Anton", "Amtmann", 1981, "Aue", 1, 52062, "Aachen"),
("Bertha", "Baumann", 1982, "Baumweg", 2, 10115, "Berlin"),
("Carla", "Carlson", 1983, "Cluse", 3, 09111, "Chemnitz");

INSERT INTO Lied(Titel,Erscheinungsjahr,Person_ID)
VALUES
("Nothing Compares 2U", 1990, 1),
("La Le Lu", 1950, 3);

INSERT INTO Person_Lied
VALUES(1, 1), (2, 1), (3, 1), (2, 2), (3, 2);

/*----------*/

# (1)
DELETE FROM Person
WHERE Nachname = "Baumann" AND NOT Geburtsjahr > 1970;

# (2)
DELETE FROM Person
WHERE NOT Ort = "Aachen" AND NOT Geburtsjahr > 1981;

#(3)
DELETE FROM Lied
WHERE Erscheinungsjahr = 2000 AND Person_ID < 10;

#(4)
DELETE FROM Person_Lied
WHERE Person_ID < 10 AND Lied_ID < 10;
