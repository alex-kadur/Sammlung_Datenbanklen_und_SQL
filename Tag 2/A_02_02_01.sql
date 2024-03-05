CREATE DATABASE A_02_02_01;
USE A_02_02_01;

CREATE TABLE Firma
(
  Firma_ID INT(11) AUTO_INCREMENT,
  Firma_Name VARCHAR(255) NOT NULL,
  PRIMARY KEY(Firma_ID)
);

CREATE TABLE Abteilung
(
  Abteilung_ID INT(11) AUTO_INCREMENT,
  Firma_ID INT(11) NOT NULL,
  Abteilung_Bezeichnung VARCHAR(255) NOT NULL,
  PRIMARY KEY(Abteilung_ID),
  FOREIGN KEY(Firma_ID) REFERENCES Firma(Firma_ID)
);

CREATE TABLE Person
(
  Person_ID INT(11) AUTO_INCREMENT,
  Abteilung_ID INT(11) NOT NULL,
  Person_Vorname VARCHAR(255) NOT NULL,
  Person_Nachname VARCHAR(255) NOT NULL,
  PRIMARY KEY(Person_ID),
  FOREIGN KEY(Abteilung_ID) REFERENCES Abteilung(Abteilung_ID)
);

ALTER TABLE Firma ADD Person_ID INT(11) NOT NULL;
ALTER TABLE Firma ADD FOREIGN KEY(Person_ID) REFERENCES Person(Person_ID);
