# a)
SELECT DISTINCT Spedition_Name
FROM spedition, hersteller, produkt, abrechnung_produkt, abrechnung, kunde
WHERE (Vorname = "Witali" AND Nachname = "Myrnow")
  AND (Datum >= "2021-01-01" AND Datum <= "2021-12-31")
  AND kunde.Kunde_ID = abrechnung.Kunde_ID
  AND abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
  AND abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
  AND produkt.Hersteller_ID = hersteller.Hersteller_ID
  AND hersteller.Spedition_ID = spedition.Spedition_ID
ORDER BY Spedition_Name LIMIT 1, 2;

# b)
SELECT DISTINCT Email
FROM kunde, abrechnung, abrechnung_produkt
WHERE (Abrechnung_ID >= 5 AND Abrechnung_ID <= 10)
  AND kunde.Kunde_ID = abrechnung.Kunde_ID
  AND abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
ORDER BY Email DESC;

# c)
SELECT DISTINCT Hersteller_Name
FROM hersteller, produkt, abrechnung_produkt
WHERE (Abrechnung_ID = 3 AND Produkt_ID > 2)
  AND abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
  AND produkt.Hersteller_ID = hersteller.Hersteller_ID
ORDER BY Hersteller_Name LIMIT 10;

# d)
SELECT Datum
FROM abrechnung, abrechnung_produkt, produkt
WHERE (Produkt_Name = "tool 2.0" OR Produkt_Name = "tool 3.1")
  AND abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
  AND abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
ORDER BY Datum DESC LIMIT 3, 5;

# e)
SELECT Datum
FROM kunde, abrechnung, abrechnung_produkt, produkt
WHERE (Vorname = "Eva" AND Nachname = "Hahn" AND Produkt_Name = "tool 2.0")
  AND kunde.Kunde_ID = abrechnung.Kunde_ID
  AND abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
  AND abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
ORDER BY Datum LIMIT 1;

# f)
SELECT DISTINCT Produkt_Name, Euro_Preis
FROM abrechnung, abrechnung_produkt, produkt
WHERE Datum = "2021-11-05"
  AND abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
  AND abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
ORDER BY Euro_Preis DESC 1;
