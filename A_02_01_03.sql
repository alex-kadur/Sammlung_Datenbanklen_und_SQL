CREATE DATABASE A_02_01_03;
USE A_02_01_03;

CREATE TABLE Wochentag
(
	Wochentag_ID INT(11) AUTO_INCREMENT,
    Wochentag_Bezeichnung VARCHAR(255) NOT NULL,
    PRIMARY KEY(Wochentag_ID)
);

CREATE TABLE Stunde
(
	Stunde_ID INT(11) AUTO_INCREMENT,
    Stunde_Beginn TIME NOT NULL,
    Stunde_ENDE TIME NOT NULL,
    PRIMARY KEY(Stunde_ID)
);

CREATE TABLE Thema
(
	Thema_ID INT(11) AUTO_INCREMENT,
    Thema_Bezeichnung VARCHAR(255) NOT NULL,
    PRIMARY KEY(Thema_ID)
);

CREATE TABLE Lehrer
(
	Lehrer_ID INT(11) AUTO_INCREMENT,
    Lehrer_Anrede VARCHAR(255) NOT NULL,
    Lehrer_Vorname VARCHAR(255) NOT NULL,
    Lehrer_Nachname VARCHAR(255) NOT NULL,
    PRIMARY KEY(Lehrer_ID)
);

CREATE TABLE Qualifikation
(
	Lehrer_ID INT(11) NULL,
    Thema_ID INT(11) NULL,
    FOREIGN KEY(Lehrer_ID) REFERENCES Lehrer(Lehrer_ID),
    FOREIGN KEY(Thema_ID) REFERENCES Thema(Thema_ID)   
);

CREATE TABLE Klasse
(
	Klasse_ID INT(11) AUTO_INCREMENT,
    Lehrer_ID INT(11) NULL,
    Klasse_Nummer VARCHAR(255) NOT NULL,
    Klasse_Buchstabe VARCHAR(255) NOT NULL,
    PRIMARY KEY(Klasse_ID),
    FOREIGN KEY(Lehrer_ID) REFERENCES Lehrer(Lehrer_ID)
);

CREATE TABLE Schueler
(
	Schueler_ID INT(11) AUTO_INCREMENT,
    Klasse_ID INT(11) NULL,
    Schueler_Vorname VARCHAR(255) NOT NULL,
    Schueler_Nachname VARCHAR(255) NOT NULL,
    PRIMARY KEY(Schueler_ID),
    FOREIGN KEY(Klasse_ID) REFERENCES Klasse(Klasse_ID)    
);

CREATE TABLE Unterrichtsstunde
(
	Unterrichtsstunde_ID INT(11) AUTO_INCREMENT,
    Klasse_ID INT(11) NULL,
    Wochentag_ID INT(11) NULL,
    Stunde_ID INT(11) NULL,
    Thema_ID INT(11) NULL,
    Lehrer_ID INT(11) NULL,
    PRIMARY KEY(Unterrichtsstunde_ID),
    FOREIGN KEY(Klasse_ID) REFERENCES Klasse(Klasse_ID),
    FOREIGN KEY(Wochentag_ID) REFERENCES Wochentag(Wochentag_ID),
    FOREIGN KEY(Stunde_ID) REFERENCES Stunde(Stunde_ID),
    FOREIGN KEY(Thema_ID) REFERENCES Thema(Thema_ID),
    FOREIGN KEY(Lehrer_ID) REFERENCES Lehrer(Lehrer_ID)    
);
