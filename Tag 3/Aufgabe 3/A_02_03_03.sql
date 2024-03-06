INSERT INTO Kunde(Vorname,Nachname,Email) # a
VALUES 
("Stefania", "Pace", "stef@123");

DELETE FROM Kunde # b
WHERE Nachname = "Myrnow";

# Es gibt Abrechnungen, die sich auf Personen_IDs der betreffenden Eintraege beziehen. Loeschen wuerde die referentielle Integritaet verletzen.

DELETE FROM Kunde # c
WHERE Kunde_ID = 6;

# Es gibt KEINE Abrechnungen, die sich auf Person_IDs der betreffenden Eintraege beziehen. Loeschen wuerde die referentielle Integritaet NICHT verletzen.  

INSERT INTO Abrechnung(Kunde_ID,Datum) # d
VALUES
(2, CURDATE());

DELETE FROM Abrechnung # e
WHERE Datum < "2022-02-01";

# Es gibt Einkaeufe (Hilfstabelle), die sich auf Abrechnung_IDs der betreffenden Eintraege beziehen. Loeschen wuerde die referentielle Integritaet verletzen.

UPDATE Spedition # f
SET Spedition_Name = "Schnell und gut"
WHERE Spedition_ID = 2;

DELETE FROM Spedition; # g
  
# Es gibt Hersteller, die sich auf Spedition_IDs der betreffenden Eintraege beziehen. Loeschen verletzt dabei die referentielle Integritaet. 
# Aber: Spedition mit ID 6 kann geloescht werden, da sich kein Hersteller auf sie bezieht.

DELETE FROM Spedition #h
WHERE Spedition_ID = 6;

UPDATE Hersteller # i
SET Hersteller_Name = "Abrakadabra", Spedition_ID = 5
WHERE Hersteller_ID = 2;

UPDATE Produkt # j
SET Hersteller_ID = 10
WHERE Produkt_ID = 3;

# Es gibt keinen Hersteller mit der Herstller_ID. Die referentielle Integritaet wird verletzt. 

TRUNCATE TABLE Abrechnung_Produkt; # k
  
# Kein Datensatz aus anderen Tabellen bezieht sich auf Datensaetze der Hilfstabelle Abrechnung_Produkt.
