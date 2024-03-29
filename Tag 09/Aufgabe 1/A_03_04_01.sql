# a)
SELECT kunde.Kunde_ID, Nachname, ifNULL(MAX(Abrechnung_ID), "Es gab keinen Besuch auf unserer Seite")
FROM kunde
LEFT JOIN abrechnung
ON kunde.Kunde_ID = abrechnung.Kunde_ID
GROUP BY kunde.Kunde_ID;

# b)
SELECT kunde.Kunde_ID, Email, ifNULL(MAX(Euro_Preis), "keine Angabe")
FROM kunde
LEFT JOIN abrechnung
ON kunde.Kunde_ID = abrechnung.Kunde_ID
LEFT JOIN abrechnung_produkt
ON abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
LEFT JOIN produkt
ON abrechnung_produkt.Produkt_ID = produkt.Produkt_ID AND Euro_Preis < 80 # falls Bedingung nicht erfuellt; nicht verknuepft und mit NULL aufgefuellt
GROUP BY kunde.Kunde_ID;

# c)
SELECT hersteller.Hersteller_ID, Hersteller_Name, COUNT(abrechnung_produkt.Produkt_ID)
FROM abrechnung
INNER JOIN abrechnung_produkt
ON abrechnung_produkt.Abrechnung_ID = abrechnung.Abrechnung_ID
AND abrechnung.Datum > "2021-11-01" AND abrechnung.Datum < "2021-11-30"
RIGHT JOIN produkt
ON produkt.Produkt_ID = abrechnung_produkt.Produkt_ID
RIGHT JOIN hersteller  
ON hersteller.Hersteller_ID = produkt.Hersteller_ID
GROUP BY hersteller.Hersteller_ID
ORDER BY COUNT(abrechnung_produkt.Produkt_ID) DESC;

# d)
SELECT abrechnung.Abrechnung_ID, Datum, COUNT(abrechnung_produkt.Produkt_ID)
FROM kunde
INNER JOIN abrechnung
ON kunde.Kunde_ID = abrechnung.Kunde_ID
LEFT JOIN abrechnung_produkt
ON abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
WHERE Vorname = "Witali", Nachname = "Myrnow"
GROUP BY abrechnung.Abrechnung_ID
HAVING COUNT(abrechnung_produkt.Produkt_ID) >= 2
ORDER BY Datum;
