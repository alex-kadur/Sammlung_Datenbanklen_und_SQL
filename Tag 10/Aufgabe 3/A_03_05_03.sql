# a) Alle Abrechnungs-ID jener Abrechnungen, deren (Kalender-)Datum nach dem Datum der Abrechnung mit der ID=3 liegt.
# Subquery
SELECT Datum
FROM abrechnung
WHERE Abrechnung_ID = 3;

# a)
SELECT Abrechnung_ID
FROM abrechnung
WHERE Datum >
(
  SELECT Datum
  FROM abrechnung
  WHERE Abrechnung_ID = 3
);

/*-----*/

# b) Anzahl aller Produkte, die teurer sind, als das Produkt mit der ID=1.
# Subquery
SELECT Euro_Preis
FROM produkt
WHERE Produkt_ID = 1;

SELECT COUNT(Produkt_ID)
FROM produkt
WHERE Euro_Preis >
(
  SELECT Euro_Preis
  FROM produkt
  WHERE Produkt_ID = 1
);

/*-----*/

# c) Alle Kundennamen von Kunden mit einer ID, die größer ist als die ID von Vera Deise.
# Subquery
SELECT Kunde_ID
FROM Kunde
WHERE Vorname = "Vera" AND NAchname = "Deise";

# c)
SELECT Vorname, Nachname
FROM kunde
WHERE Kunde_ID >
(
  SELECT Kunde_ID
  FROM Kunde
  WHERE Vorname = "Vera" AND NAchname = "Deise"
);

/*-----*/

# d) Auf die 5 Kunden, die bei uns schon etwas kauften (Gala Nieda und Peter Kaufnix haben ja bisher noch keinen Einkauf getätigt) entfällt offensichtlich im Durchschnitt jeweils 20% der Gesamtbestellsumme (in €). Listen Sie bitte aber nur Vor- und Nachnamen, sowie die individuelle Gesamtbestellsumme auf, falls dieser Betrag überdurchschnittlich ist.
# Subquery
SELECT 0.2 * SUM(Euro_Preis)
FROM abrechnung_produkt, produkt
WHERE abrechnung_produkt.Produkt_ID = produkt.Produkt_ID;

# d)
SELECT Vorname, Nachname, SUM(Euro_Preis)
FROM kunde abrechnung, abrechnung_produkt, produkt
WHERE kunde.Kunde_ID = abrechnung.Kunde_ID
AND abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechnung_ID
AND abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
GROUP BY kunde.Kunde_ID
HAVING SUM(Euro_Preis) >
(
  SELECT 0.2 * SUM(Euro_Preis)
  FROM abrechnung_produkt, produkt
  WHERE abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
);

/*-----*/

# e) Vor-, Nachname und Anzahl der individuellen Abrechnungen, sofern diese höher ist, als die Anzahl der Abrechnungen des Kunden(2).
# Subquery
SELECT COUNT(Abrechnung_ID)
FROM abrechnung
WHERE Kunde_ID = 2;

# e)
SELECT Vorname, Nachname, COUNT(Abrechnung_ID)
FROM kunde, abrechnung
WHERE kunde.Kunde_ID = abrechnung.Kunde_ID
GROUP BY kunde.Kunde_ID
HAVING COUNT(Abrechnung_ID) >
(
  SELECT COUNT(Abrechnung_ID)
  FROM abrechnung
  WHERE Kunde_ID = 2
);
  
/*-----*/
  
# f) Alle Herstellernamen, die überdurchschnittlich viele Produkte verkauften. (Anzahl der Hersteller und Anzahl der bestellten Produkte bitte per Unterabfrage ermitteln.)
# Subquery 1
SELECT COUNT(Hersteller_ID)
FROM hersteller;

# Subquery 2
SELECT COUNT(Produkt_ID)
FROM abrechnung_produkt;

SELECT Hersteller_Name, COUNT(abrechnung_produkt.Produkt_ID)
FROM abrechnung_produkt, produkt, hersteller
WHERE abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
AND produkt.Hersteller_ID = hersteller.Hersteller_ID
GROUP BY hersteller.Hersteller_ID
HAVING COUNT(abrechnung_produkt.Produkt_ID) >
(
  (SELECT COUNT(Produkt_ID) FROM abrechnung_produkt)
  /
  (SELECT COUNT(Hersteller_ID) FROM hersteller)
);
