# a)
SELECT Vorname, Nachname
FROM kunde, abrechnung
WHERE Abrechnung_ID = 2
AND kunde.Kunde_ID = abrechnung.Kunde_ID;

# b)
SELECT DISTINCT Spedition_Name
FROM spedition, hersteller, produkt
WHERE Produkt_Name = "solver premium"
AND spedition.Spedition_ID = herstelelr.Spedition_ID
AND hersteller.Hersteller_ID = produkt.Hersteller_ID;

# c)
SELECT DISTINCT Hersteller_Name
FROM hersteller, produkt
WHERE Produkt_ID > 2
AND hersteller.Hersteller_ID = produkt.Hersteller_ID
ORDER BY Hersteller_Name DESC;

# d)
SELECT DISTINCT Spedition_Name
FROM spedition, hersteller, produkt
WHERE (Euro_Preis >= 10 AND Euro_Preis <= 1000)
AND spedition.Spedition_ID = hersteller.Spedition_ID
AND hersteller.Hersteller_ID = produkt.Hersteller_ID
ORDER BY Spedition_Name;

# e)
SELECT DISTINCT Spedition_Name
FROM spedition, hersteller, produkt, abrechnung_produkt
WHERE (Euro_Preis >= 10 AND Euro_Preis <= 1000)
AND spedition.Spedition_ID = hersteller.Spedition_ID
AND hersteller.HErsteller_ID = produkt.Hersteller_ID
AND produkt.Produkt_ID = abrechnung_produkt.Produkt_ID
ORDER BY Spedition_Name;

# f)
SELECT Produkt_Name, Euro_Preis, Datum
FROM kunde, abrechnung, abrechnung_produkt, produkt
WHERE (Vorname = "Elli" AND Nachname = "Rot")
AND kunde.Kunde_ID = abrechnung.Kunde_ID
AND abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
AND abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
ORDER BY Euro_Preis DESC LIMIT 3;
