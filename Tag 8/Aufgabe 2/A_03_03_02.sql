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
SELECT Spedition_Name, COUNT(Abrechnung_ID)
FROM abrechnung_produkt
LEFT JOIN produkt
ON abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
LEFT JOIN hersteller
ON produkt.Hersteller_ID = hersteller.Hersteller_ID
LEFT JOIN spedition
ON hersteller.Spedition_ID = spedition.Spedition_ID  
GROUP BY Spedition_Name
ORDER BY COUNT(Abrechnung_ID) DESC;

# f)
SELECT Abrechnung_ID, MAX(Euro_Preis)
FROM abrechnung_produkt
LEFT JOIN produkt
ON abrechnung_produkt.Produkt_ID = produkt.Produkt_ID  
WHERE Euro_Preis > 30
GROUP BY Abrechnung_ID
ORDER BY MAX(Euro_Preis) DESC, Abrechnung_ID;
