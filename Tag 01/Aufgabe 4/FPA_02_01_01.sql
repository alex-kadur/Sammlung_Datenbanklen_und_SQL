CREATE DATABASE A_02_01_04;
USE A_02_01_04;

CREATE TABLE Ort
(
	Ort_ID INT(11) AUTO_INCREMENT,
	Ort_Name VARCHAR(255) NOT NULL,
	PRIMARY KEY(Ort_ID)
);

CREATE TABLE Zentralrechner
(
	Zentralrechner_ID INT(11) AUTO_INCREMENT,
	Ort_ID INT(11) NOT NULL,
	Zentralrechner_Bezeichnung VARCHAR(255) NOT NULL,
	PRIMARY KEY(Zentralrechner_ID),
	FOREIGN KEY(Ort_ID) REFERENCES Ort(Ort_ID)
);

CREATE TABLE Institut
(
	Institut_ID INT(11) AUTO_INCREMENT,
	Ort_Name VARCHAR(255) NOT NULL,
	PRIMARY KEY(Institut_ID)
);

CREATE TABLE Zeitzone
(
	Zeitzone_ID INT(11) AUTO_INCREMENT,
	Zeitzone_Bezeichnung VARCHAR(255) NOT NULL,
	Zeitzone_Differenz_zur_Default_Zeit INT(11) NOT NULL,
	PRIMARY KEY(Zeitzone_ID)
);

CREATE TABLE Wert
(
	Wert_ID INT(11) AUTO_INCREMENT,
	Institut_ID INT(11) NOT NULL,
	Zentralrechner_ID INT(11) NOT NULL,
	Ort_ID INT(11) NOT NULL,
	Zeitzone_ID INT(11) NOT NULL,
	Wert_Datum DATE NOT NULL,
	Wert_Uhrzeit TIME NOT NULL,
	Wert_Temperatur INT(11) NOT NULL,
	Wert_Luftfeuchtigkeit INT(11) NOT NULL,
	Wert_Niederschlag INT(11) NOT NULL,
	Wert_Windgeschwindigkeit INT(11) NOT NULL,
	Wert_istPrognose INT(11) NOT NULL,	
	PRIMARY KEY(Wert_ID),
	FOREIGN KEY(Institut_ID) REFERENCES Institut(Institut_ID),
	FOREIGN KEY(Zentralrechner_ID) REFERENCES Zentralrechner(Zentralrechner_ID),
	FOREIGN KEY(Ort_ID) REFERENCES Ort(Ort_ID),
	FOREIGN KEY(Zeitzone_ID) REFERENCES Zeitzone(Zeitzone_ID)
);
