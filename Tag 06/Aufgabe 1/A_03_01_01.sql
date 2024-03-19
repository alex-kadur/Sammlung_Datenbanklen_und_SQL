# a)
SELECT Datum, Kunde_ID, Nachname
FROM abrechnung, kunde
WHERE kunde.Kunde_ID = abrechnung.Kunde_ID
ORDER BY Datum DESC LIMIT 10;

# b)
SELECT DISTINCT Produkt_Name, Euro_Preis, Hersteller_Name
FROM produkt, hersteller
WHERE hersteller.Hersteller_ID = produkt.Hersteller_ID
AND Euro Preis < 1000
ORDER BY Hersteller_Name, Produkt_Name;

# c)
SELECT DISTINCT Vorname, Nachname
FROM kunde, abrechnung, abrechnung_produkt, produkt
WHERE Produkt_Name = "tool 2.0" 
AND kunde.Kunde_ID = abrechnung.Kunde_ID
AND abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
AND abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
ORDER BY Nachname, Vorname;

# d)
SELECT DISTINCT Produkt_Name
FROM produkt, abrechnung_produkt, abrechnung
WHERE Datum = "2021-10-16"
AND abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
AND abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
ORDER BY Produkt_Name LIMIT 2, 3;

# e)
SELECT DISTINCT Datum
FROM spedition, hersteller, produkt, abrechnung_produkt, abrechnung
WHERE Spedition_Name = "Speedvan GmbH"
AND spedition.Spedition_ID = hersteller.Spedition_ID
AND hersteller.Hersteller_ID = produkt.Hersteller_ID
AND produkt.Produkt_ID = abrechnung_produkt.Produkt_ID
AND abrechnung_produkt.Abrechnung_ID = abrechnung.Abrechnung_ID
ORDER BY Datum LIMIT 100;


