# a)
SELECT Abrechnung_ID, Datum, Vorname, Nachname
FROM kunde
LEFT JOIN abrechnung
ON kunde.Kunde_ID = abrechnung.Kunde_ID;

# b)
SELECT Produkt_ID, Abrechnung_ID
FROM abrechnung
LEFT JOIN abrechnung_produkt
ON abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID;

# c)
SELECT Produkt_ID, Abrechnung_ID
FROM abrechnung_produkt
RIGHT JOIN produkt
ON abrechnung_produkt.Produkt_ID = produkt.Produkt_ID;

# d)
SELECT Produkt_Name, Hersteller_Name
FROM produkt
RIGHT JOIN hersteller
ON produkt.Hersteller_ID = hersteller.Hersteller_ID;

# e)
SELECT Hersteller_Name, Spedition_Name
FROM hersteller
RIGHT JOIN spedition
ON hersteller.Spedition_ID = spedition.Spedition_ID;
