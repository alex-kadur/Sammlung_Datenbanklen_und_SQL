CREATE DATABASE A_02_02_02;
USE A_02_02_02;

CREATE TABLE Ausbildung
(
    Ausbildung_ID INT(11) AUTO_INCREMENT,
    Bezeichnung VARCHAR(255) NOT NULL,
    PRIMARY KEY(Ausbildung_ID)
);

CREATE TABLE Firmenwagen
(
    Firmenwagen_ID INT(11) AUTO_INCREMENT,
    Kennzeichen VARCHAR(255) NOT NULL,
    Kilometerstand_bei_Uebergabe INT(11) NOT NULL,
    PRIMARY KEY(Firmenwagen_ID)
);

CREATE TABLE Mitarbeiter
(
    Mitarbeiter_ID INT(11) AUTO_INCREMENT,
    Ausbildung_ID INT(11) NOT NULL,
    Firmenwagen_ID INT(11) NOT NULL,
    Vorname VARCHAR(255) NOT NULL,
    Nachname VARCHAR(255) NOT NULL,
    Vorwahl VARCHAR(255) NOT NULL, # VARCHAR günstig, um führende Nullen eintragen zu können
    Rufnummer VARCHAR(255) NOT NULL, # VARCHAR kein Nachteil, da mit diesen Werten nicht gerechnet wird
    Mitarbeiter_seit DATE NOT NULL,
    Gehalt_Euro FLOAT(7,2) NOT NULL,
    PRIMARY KEY(Mitarbeiter_ID),
    FOREIGN KEY(Ausbildung_ID) REFERENCES Ausbildung(Ausbildung_ID),
    FOREIGN KEY(Firmenwagen_ID) REFERENCES Firmenwagen(Firmenwagen_ID)
);

ALTER TABLE Ausbildung ADD Ausbildungs_Dauer_in_Monaten INT(11) NOT NULL; # a
  
ALTER TABLE Ausbildung CHANGE Bezeichnung Bezeichnung VARCHAR(30) NOT NULL; # b
  
ALTER TABLE Ausbildung RENAME Qualifikation; # c

CREATE TABLE Marke # d
(
    Marke_ID INT(11) AUTO_INCREMENT,
    Markenname VARCHAR(50) NOT NULL,
    PRIMARY KEY(Marke_ID)
);

ALTER TABLE Firmenwagen ADD Marke_ID INT(11) NOT NULL; #e
ALTER TABLE Firmenwagen ADD FOREIGN KEY(Marke_ID) REFERENCES Marke(Marke_ID);

ALTER TABLE Firmenwagen CHANGE Kennzeichen Kfz_Zeichen VARCHAR(255) NOT NULL; # f

ALTER TABLE Mitarbeiter RENAME Kollege; # g

ALTER TABLE Kollege CHANGE Nachname Familienname VARCHAR(30) NULL; # h

ALTER TABLE Kollege DROP FOREIGN KEY Kollege_ibfk_2;
ALTER TABLE Kollege DROP Firmenwagen_ID;






