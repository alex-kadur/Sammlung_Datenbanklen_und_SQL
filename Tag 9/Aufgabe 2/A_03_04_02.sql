# a)
SELECT kunde.Kunde_ID, Vorname, Nachname
FROM kunde
LEFT JOIN abrechnung
ON kunde.Kunde_ID = abrechnung.Kunde_ID
LEFT JOIN abrechnung_produkt
ON abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
GROUP BY kunde.Kunde_ID
HAVING COUNT(abrechnung_produkt.Produkt_ID) = 0;

# b)
SELECT hersteller.Hersteller_ID, Hersteller_Name, ifNULL(ROUND(AVG(Euro_Preis), 2), "kein Produkt im Sortiment")
FROM hersteller
LEFT JOIN produkt
ON hersteller.Hersteller_ID = produkt.Hersteller_ID 
GROUP BY hersteller.Hersteller_ID
ORDER BY AVG(Euro_Preis) DESC;

# c)
SELECT spedition.Spedition_ID, Spedition_Name, ifNULL(SUM(Euro_Preis), "keine Produkte transportiert")
FROM spedition
LEFT JOIN hersteller
ON spedition.Spedition_ID = hersteller.Spedition_ID
LEFT JOIN produkt
ON hersteller.Hersteller_ID = produkt.Hersteller_ID
LEFT JOIN abrechnung_produkt
ON produkt.Produkt_ID = abrechnung_produkt.Produkt_ID
GROUP BY spedition.Spedition_ID
HAVING COUNT(abrechnung_produkt.Produkt_ID) > 0
ORDER BY SUM(Euro_Preis) DESC;

# d)
SELECT produkt.Produkt_ID, Produkt_Name, COUNT(abrechnung_Produkt.Produkt_ID)
FROM produkt
LEFT JOIN abrechnung_produkt
ON produkt.Produkt_ID = abrechnung_produkt.Produkt_ID
LEFT JOIN abrechnung
ON abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
LEFT JOIN kunde
ON kunde.Kunde_ID = abrechnung.Kunde_ID
WHERE Vorname = "Vera" AND Nachname = "Diese"
GROUP BY produkt.Produkt_ID
ORDER BY COUNT(abrechnung_Produkt.Produkt_ID) DESC;

