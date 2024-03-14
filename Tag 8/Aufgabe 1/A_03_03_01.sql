# a)
SELECT MIN(Spedition_ID), MAX(Spedition_ID), COUNT(Spedition_ID)
FROM spedition;

# b)
SELECT AVG(Euro_Preis) AS "Durchschnittspreis"
FROM abrechnung_produkt
LEFT JOIN produkt
ON abrechnung_produkt.Produkt_ID = produkt.Produkt_ID;

# c)
SELECT Datum, SUM(Euro_Preis)
FROM abrechnung, abrechnung_produkt, produkt
WHERE abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
AND abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
GROUP BY abrechnung.Abrechnung_ID
ORDER BY SUM(Euro_Preis) DESC;

# d)
SELECT kunde.Kunde_ID, Nachname, SUM(Produkt_ID)
FROM kunde, abrechnung, abrechnung_produkt
WHERE kunde.Kunde_ID = abrechnung.Kunde_ID
AND abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
GROUP BY Kunde_ID
ORDER BY SUM(Produkt_ID) DESC, Nachname
