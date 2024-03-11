# a)
SELECT * FROM Produkt
WHERE ID > 1 AND Euro_Preis > 20 AND Euro_Preis < 50
ORDER BY Herstller_ID, Euro_Preis DESC
LIMIT 2, 3;

# b)
SELECT Spedition_Name FROM Spedition
WHERE NOT (Spedition_ID = 1 OR Spedition_ID = 10)
ORDER BY Spedition_Name
LIMIT 2, 10;

# c)
SELECT Kunde_ID, Nachname FROM Kunde
WHERE NOT (Kunde_ID > 100 OR Nachname = "Mustermann")
ORDER BY Kunde_ID DESC
LIMIT 4;

# d)
SELECT DISTINCT Produkt_ID FROM Abrechnung_Produkt
WHERE Produkt_ID > 2 AND Abrechnung_ID > 3
ORDER BY Produkt_ID;

# e)
SELECT * From Produkt
ORDER BY Euro_Preis
LIMIT 100, 3;
