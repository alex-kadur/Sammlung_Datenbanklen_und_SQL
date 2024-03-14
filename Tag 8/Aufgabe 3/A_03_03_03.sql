# a)
SELECT COUNT(Abrechnung_ID)
FROM kunde, abrechnung
WHERE kunde.Kunde_ID = abrechnung.Kunde_ID;
AND (Vorname = "Witali" AND Nachname = "Myrnow" AND Datum BETWEEN "2021-01-01" AND "2021-12-31")

# b)
SELECT SUM(Euro_Preis)
FROM abrechnung, abrechnung_produkt, produkt
WHERE abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID;
AND abrechnung_produkt.Produkt_ID = produkt.Produkt_ID;
AND (NOT Kunde_ID = 2 AND Datum BETWEEN "2021-11-01" AND "2021-11-30") 

# c)
SELECT COUNT(produkt.Produkt_ID)
FROM kunde, abrechnung, abrechnung_produkt, produkt, hersteller, spedition
WHERE kunde.Kunde_ID = abrechnung.Kunde_ID
AND abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
AND abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
AND produkt.Hersteller_ID = hersteller.Hersteller_ID
AND hersteller.Spedition_ID = spedition.Spedition_ID
AND (Spedition_Name = "RocketLogistic AG" AND Vorname = "Eva" AND Nachname = "Hahn");

# d)
SELECT Vorname, Nachname, COUNT(abrechnung_produkt.Abrechnung_ID)  
FROM kunde, abrechnung, abrechnung_produkt, produkt
WHERE kunde.Kunde_ID = abrechnung.Kunde_ID
AND abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
AND abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
AND (Euro_Preis < 80 AND Datum BETWEEN "2021-07-01" AND "2021-12-31") 
GROUP BY kunde.Kunde_ID
ORDER BY COUNT(abrechnung_produkt.Abrechnung_ID) DESC;

# e)
SELECT Hersteller_Name, MIN(Euro_Preis), MAX(Euro_Preis)
FROM hersteller, produkt
WHERE hersteller.Hersteller_ID = produkt.Hersteller_ID
GROUP BY hersteller.Hersteller_ID
HAVING AVG(Euro_Preis) < 100
ORDER BY Hersteller_Name LIMIT 3;

# f)
SELECT Produkt_Name, COUNT(DISTINCT Kunde_ID)
FROM abrechnung, abrechnung_produkt, produkt
WHERE abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
AND abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
ORDER BY Produkt_Name, COUNT(DISTINCT Kunde_ID) DESC;
