# a)
SELECT * FROM Spedition;

# b)
SELECT * FROM Hersteller
ORDER BY Hersteller_Name;

# c)
SELECT * FROM Produkt
WHERE Euro_Preis > 20 AND Euro_Preis < 50
ORDER BY Produkt_Name, Euro_Preis;

# d)
SELECT Kunde_ID, Datum FROM Abrechnung
WHERE Datum > "2021-05-31" AND Datum < "2022-06-01";

# e)
SELECT * FROM Kunde
ORDER BY Kunde_ID
DESC
LIMIT 2, 4;

# f)
SELECT DISTINCT Kunde_ID FROM Abrechnung
ORDER BY Kunde_ID;



