CREATE DATABASE A_02_01_02;
USE A_02_01_02;

CREATE TABLE Ausbildung
(
    Ausbildung_ID INT(11) AUTO_INCREMENT,
    Ausbildung_Bezeichnung VARCHAR(255) NOT NULL,
    PRIMARY KEY(Ausbildung_ID)
);

CREATE TABLE Firmenwagen
(
    Firmenwagen_ID INT(11) AUTO_INCREMENT,
    Firmenwagen_Kennzeichen VARCHAR(255) NOT NULL,
    Firmenwagen_Kilometerstand FLOAT(7,2) NOT NULL,
    PRIMARY KEY(Firmenwagen_ID)
);

CREATE TABLE Mitarbeiter
(
    Mitarbeiter_ID INT(11) AUTO_INCREMENT,
    Firmenwagen_ID INT(11) NULL,
    Ausbildung_ID INT(11) NULL,
    Mitarbeiter_Vorname VARCHAR(255) NOT NULL,
    Mitarbeiter_Nachname VARCHAR(255) NOT NULL,
    Mitarbeiter_Vorwahl VARCHAR(255) NOT NULL,
    Mitarbeiter_Rufnummer VARCHAR(255) NOT NULL,
    Mitarbeiter_seit DATE NOT NULL,
    Mitarbeiter_Gehalt_Euro FLOAT(7,2) NOT NULL,
    PRIMARY KEY(Mitarbeiter_ID),
    FOREIGN KEY(Ausbildung_ID) REFERENCES Ausbildung(Ausbildung_ID),
    FOREIGN KEY(Firmenwagen_ID) REFERENCES Firmenwagen(Firmenwagen_ID)
);