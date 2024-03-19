INSERT INTO Kunde(Vorname, Nachname, Email)
VALUES
("Martha", "Mustermann", "a@b");

INSERT INTO Abrechnung(Abrechnung_ID, Kunde_ID, Datum)
VALUES
(1, 2, "2022-02-02");

UPDATE Abrechnung
SET Kunde_ID = 1
WHERE Abrechnung_ID = 1;

INSERT INTO Spedition(Spedition_Name)
VALUES
("Stolper AG");

INSERT INTO Hersteller(Hersteller_Name, Spedition_ID)
VALUES
("Wucher AG", 1);

INSERT INTO Produkt(Hersteller_ID, Produkt_Name, Euro_Preis)
VALUES
(1, "Murks I", 50);

INSERT INTO Produkt(Hersteller_ID, Produkt_Name, Euro_Preis)
VALUES
(1, "Murks II", 50);

DELETE FROM Produkt
WHERE Produkt_ID = 1;

UPDATE Produkt
SET Produkt_Name = "Bombig", Euro_Preis = 100
WHERE Produkt_ID = 2;

INSERT INTO Abrechnung_Produkt(Abrechnung_ID, Produkt_ID)
VALUES
(1, 2);






