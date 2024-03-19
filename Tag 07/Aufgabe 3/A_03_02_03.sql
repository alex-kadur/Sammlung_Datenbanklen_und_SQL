# a)
SELECT DISTINCT Produkt_Name, Vorname, Nachname
FROM kunde
LEFT JOIN abrechnung
ON kunde.Kunde_ID = abrechnung.Kunde_ID
LEFT JOIN abrechnung_produkt
ON abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
LEFT JOIN produkt
ON abrechnung_produkt.Produkt_ID = produkt.Produkt_ID;

# b)
SELECT DISTINCT Produkt_Name, Vorname, Nachname
FROM produkt
LEFT JOIN abrechnung_produkt
ON produkt.Produkt_ID = abrechnung_produkt.Produkt_ID
LEFT JOIN abrechnung
ON abrechnung_produkt.Abrechnung_ID = abrechnung.Abrechnung_ID
LEFT JOIN kunde
ON abrechnung.Kunde_ID = kunde.Kunde_ID;

# c)
SELECT DISTINCT Datum, Spedition_Name
FROM spedition
LEFT JOIN hersteller
ON spedition.Spedition_ID = hersteller.Spedition_ID
LEFT JOIN produkt
ON hersteller.Hersteller_ID = produkt.Hersteller_ID
LEFT JOIN abrechnung_produkt
ON produkt.Produkt_ID = abrechnung_produkt.Produkt_ID
LEFT JOIN abrechnung
ON abrechnung_produkt.Abrechnung_ID = abrechnung.Abrechnung_ID;

# d)
SELECT DISTINCT Produkt_Name, Hersteller_Name
FROM hersteller
LEFT JOIN produkt
ON hersteller.Hersteller_ID = produkt.Hersteller_ID
WHERE Euro_Preis >= 50;

SELECT DISTINCT Produkt_Name, Hersteller_Name
FROM hersteller
LEFT JOIN produkt
ON hersteller.Hersteller_ID = produkt.Hersteller_ID
AND Euro_Preis >= 50; 
