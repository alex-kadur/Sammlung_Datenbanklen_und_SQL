# a)
SELECT COUNT(*)
FROM kunde;

# b)
SELECT MAX(Datum)
FROM abrechnung;

# c)
SELECT COUNT(DISTINCT Produkt_ID)
FROM abrechnung_produkt;

# d)
SELECT MIN(Euro_Preis), MAX(Euro_Preis)
FROM produkt
WHERE Euro_Preis BETWEEN 20 AND 60;

# e)
SELECT Spedition_Name, COUNT(abrechnung_produkt.Abrechnung_ID)
FROM abrechnung_produkt, produkt, hersteller, spedition
WHERE abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
AND produkt.Hersteller_ID = hersteller.Hersteller_ID
AND hersteller.Spedition_ID = spedition.Spedition_ID  
GROUP BY Spedition_Name
ORDER BY COUNT(abrechnung_produkt.Abrechnung_ID) DESC;

# f)
SELECT Abrechnung_ID, MAX(Euro_Preis)
FROM abrechnung_produkt, produkt
WHERE abrechnung_produkt.Produkt_ID = produkt.Produkt_ID  
GROUP BY Abrechnung_ID
HAVING MAX(Euro_Preis) >= 30
ORDER BY MAX(Euro_Preis) DESC, Abrechnung_ID;
