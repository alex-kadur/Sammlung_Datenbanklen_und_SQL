# a)
SELECT AVG(Euro_Preis)
FROM kunde, abrechnung, abrechnung_produkt, produkt
WHERE kunde.Kunde_ID = abrechnung.Kunde_ID
AND abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
AND abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
AND (Vorname = "Ellie" AND Nachname = "Rot" AND Datum BETWEEN "2021-05-01" AND "2021-05-31");

# b)
SELECT SUM(Euro_Preis)
FROM abrechnung_produkt, produkt
WHERE abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
AND Produkt_Name = "tool 2.0";

# c)
SELECT Produkt_Name, SUM(Euro_Preis)
FROM abrechnung_produkt, produkt
WHERE abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
GROUP BY Produkt_Name
ORDER BY SUM(Euro_Preis) DESC;

# d)
SELECT Produkt_Name, SUM(Euro_Preis)
FROM abrechnung_produkt, produkt
WHERE abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
GROUP BY Produkt_Name
HAVING SUM(Euro_Preis) < 100
ORDER BY SUM(Euro_Preis) DESC;

# e)
SELECT Vorname, Nachname, COUNT(DISTINCT Spedition_ID)
FROM kunde, abrechnung, abrechnung_produkt, produkt, hersteller
WHERE kunde.Kunde_ID = abrechnung.Kunde_ID
AND abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
AND abrechnung_produkt.Produkt_ID = produkt.Produkt_ID 
AND produkt.Hersteller_ID = hersteller.Hersteller_ID  
GROUP BY kunde.Kunde_ID
HAVING COUNT(DISTINCT Spedition_ID) <= 4
ORDER BY COUNT(DISTINCT Spedition_ID) DESC;

# f)
SELECT Spedition_Name, Vorname, Nachname, SUM(Euro_Preis)
FROM kunde, abrechnung, abrechnung_produkt, produkt, hersteller, spedition
WHERE kunde.Kunde_ID = abrechnung.Kunde_ID
AND abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
AND abrechnung_produkt.Produkt_ID = produkt.Produkt_ID 
AND produkt.Hersteller_ID = hersteller.Hersteller_ID  
AND hersteller.Spedition_ID = spedition.Spedition_ID
GROUP BY spedition.Spedition_ID, kunde.Kunde_ID
HAVING SUM(Euro_Preis) > 25
ORDER BY SUM(Euro_Preis) DESC, Spedition_Name, Nachname, Vorname;
