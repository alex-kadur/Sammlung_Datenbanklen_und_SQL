# a)
SELECT Vorname, Nachname, Email
FROM kunde, abrechnung, abrechnung_produkt
INNER JOIN abrechnung
ON kunde.Kunde_ID = abrechnung.Kunde_ID 
AND Kunde_ID > 2 
AND Datum > "2021-04-30"
INNER JOIN abrechnung_produkt
ON abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
INNER JOIN produkt
ON abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
AND Euro_Preis > 30
ORDER BY Nachname, Vorname;

# b)
SELECT Produkt_Name, Abrechnung_ID
FROM produkt
LEFT JOIN abrechnung_produkt
ON produkt.Produkt_ID = abrechnung_produkt.Produkt_ID
WHERE Euro_Preis < 100;

# c)
SELECT Hersteller_Name
FROM hersteller
INNER JOIN produkt
ON hersteller.HErsteller_ID = produkt.Hersteller_ID
INNER JOIN abrechnung_produkt
ON produkt.Produkt_ID = abrechnung_produkt.Produkt_ID
ORDER BY Hersteller_Name DESC;

# d)
SELECT Produkt_Name, Euro_Preis, Hersteller_Name, Spedition_Name
FROM spedition
JOIN LEFT hersteller
ON spedition.Spedition_ID = hersteller.Spedition_ID
JOIN LEFT produkt
ON hersteller.Hersteller_ID = produkt.Produkt_ID
AND (Euro_Preis >= 30 AND Euro_Preis <= 200)  
ORDER BY Spedition_Name, Produkt_Name;
