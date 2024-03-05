CREATE DATABASE A_02_02_04;
USE A_02_02_04;

CREATE TABLE Filiale
(
    Filiale_ID INT(11) AUTO_INCREMENT,
    Filiale_PLZ VARCHAR(255) NOT NULL,
    Filiale_Ort VARCHAR(255) NOT NULL,
    Filiale_Strasse VARCHAR(255) NOT NULL,
    Filiale_Hausnummer VARCHAR(255) NOT NULL,
    PRIMARY KEY(Filiale_ID)
);

CREATE TABLE Mitarbeiter
(
    Mitarbeiter_ID INT(11) AUTO_INCREMENT,
    Filiale_ID INT(11) NOT NULL,
    Mitarbeiter_Vorname VARCHAR(255) NOT NULL,
    Mitarbeiter_Nachname VARCHAR(255) NOT NULL,
    PRIMARY KEY(Mitarbeiter_ID),
    FOREIGN KEY(Filiale_ID) REFERENCES Filiale(Filiale_ID)
);

CREATE TABLE Medikament
(
    Medikament_ID INT(11) AUTO_INCREMENT,
    Medikament_Name VARCHAR(255) NOT NULL,
    Medikament_Preis_Euro FLOAT(9,2) NOT NULL,
    PRIMARY KEY(Medikament_ID)
);

CREATE TABLE Krankheit
(
    Krankheit_ID INT(11) AUTO_INCREMENT,
    Krankheit_Name_lat VARCHAR(255) NOT NULL,
    Krankheit_Name_dt VARCHAR(255) NOT NULL,
    PRIMARY KEY(Krankheit_ID)
);

CREATE TABLE Medikament_Filiale
(
    Medikament_ID INT(11) NOT NULL,
    Filiale_ID INT(11) NOT NULL,
    FOREIGN KEY(Medikament_ID) REFERENCES Medikament(Medikament_ID),
    FOREIGN KEY(Filiale_ID) REFERENCES Filiale(Filiale_ID)
);

CREATE TABLE Medikament_Krankheit
(
    Medikament_ID INT(11) NOT NULL,
    Krankheit_ID INT(11) NOT NULL,
    FOREIGN KEY(Medikament_ID) REFERENCES Medikament(Medikament_ID),
    FOREIGN KEY(Krankheit_ID) REFERENCES Krankheit(Krankheit_ID)
);
