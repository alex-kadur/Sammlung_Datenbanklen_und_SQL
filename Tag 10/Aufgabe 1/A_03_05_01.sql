# Subquery a) und b)
SELECT Nachname FROM kunde
WHERE Kunde_ID = 3;

# a)
SELECT Kunde_ID, Vorname, Nachname FROM kunde
WHERE Nachname =
(
  SELECT Nachname
  FROM kunde
  WHERE Kunde_ID = 3
);

# b)
SELECT Kunde_ID, Vorname, Nachname FROM kunde
WHERE Nachname =
(
  SELECT Nachname FROM kunde
  WHERE Kunde_ID = 3
)
AND NOT Kunde_ID = 3;

/*-----*/

# Subquery c)
SELECT MAX(Euro_Preis) FROM Produkt;

# c)
SELECT Produkt_ID, Produkt_Name, Euro_Preis FROM Produkt
WHERE euro_Preis = 
(
  SELECT MAX(Euro_Preis)
  FROM Produkt;
);

/*-----*/

# Subquery d)
SELECT COUNT(Produkt_ID) FROM abrechnung_produkt
WHERE Abrechnung_ID = 3;

# d)
SELECT Vorname, Nachname FROM kunde
LEFT JOIN abrechnung ON kunde.Kunde_ID = abrechnung.Kunde_ID
LEFT JOIN abrechnung_produkt ON abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
GROUP BY kunde.Kunde_ID
HAVING COUNT(Produkt_ID) <
(
  SELECT COUNT(Produkt_ID)
  FROM abrechnung_produkt
  WHERE Abrechnung_ID = 3
);

/*-----*/

# Subquery e)
SELECT ifNull(SUM(Euro_Preis), 0)
FROM abrechnung, abrechnung_produkt, produkt
WHERE abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
AND abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
AND abrechnung.Kunde_ID = 5;

# e)
SELECT COUNT(produkt.Produkt_ID)
FROM produkt
WHERE Euro_Preis <
(
  SELECT ifNull(SUM(Euro_Preis), 0)
  FROM abrechnung, abrechnung_produkt, produkt
  WHERE abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
  AND abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
  AND abrechnung.Kunde_ID = 5
);




