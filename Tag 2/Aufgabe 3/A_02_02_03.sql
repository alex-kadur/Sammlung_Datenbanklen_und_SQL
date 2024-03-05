CREATE DATABASE A_02_02_03;
USE A_02_02_03;

CREATE TABLE Stadt
(
    Stadt_ID INT(11) AUTO_INCREMENT,
    Stadt_Name VARCHAR(255) NOT NULL,
    PRIMARY KEY(Stadt_ID)
);

CREATE TABLE Stadtteil
(
    Stadtteil_ID INT(11) AUTO_INCREMENT,
    Stadt_ID INT(11) NOT NULL,
    Stadtteil_Name VARCHAR(255) NOT NULL,
    PRIMARY KEY(Stadt_ID),
    FOREIGN KEY(Stadt_ID) REFERENCES Stadt(Stadt_ID)
);

CREATE TABLE Postbote
(
    Postbote_ID INT(11) AUTO_INCREMENT,
    Postbote_Vorname VARCHAR(255) NOT NULL,
    Postbote_Nachname VARCHAR(255) NOT NULL,
    PRIMARY KEY(Stadt_ID)
);

CREATE TABLE Strasse
(
    Strasse_ID INT(11) AUTO_INCREMENT,
    Stadtteil_ID INT(11) NOT NULL,
    Postbote_ID INT(11) NOT NULL,
    Strasse_Name VARCHAR(255) NOT NULL,
    PRIMARY KEY(Strasse_ID),
    FOREIGN KEY(Stadtteil_ID) REFERENCES Stadtteil(Stadtteil_ID)
    FOREIGN KEY(Postbote_ID) REFERENCES Postbote(Postbote_ID)
);

/*----------*/

ALTER TABLE Stadt RENAME Ort; # c1

ALTER TABLE Stadt_Name CHANGE Ort_Name; # c2

ALTER TABLE Ort ADD Anzahl_Einwohner INT(11) NOT NULL; # c3

ALTER TABLE Postbote DROP Postbote_Vorname; # c4

ALTER TABLE Postbote ADD Ort_ID INT(11) NOT NULL; # c5
ALTER TABLE Postbote ADD FOREIGN KEY(Ort_ID) REFERENCES Ort(Ort_ID);





