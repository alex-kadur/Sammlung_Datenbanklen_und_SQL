# a) Es sollen (fast) alle Produkte (ID, Produktname und Preis) ausgegeben werden. Ausnahme soll jedoch das Produkt mit der größten ID sein. Ausgabe numerisch sortiert nach Produkt-ID  
# Subquery
SELECT MAX(Produkt_ID)
FROM produkt;

# a)
SELECT Produkt_ID, Produkt_Name, Euro_Preis
FROM produkt
WHERE NOT Produkt_ID =
(
  SELECT MAX(Produkt_ID)
  FROM produkt
)
ORDER BY Produkt_ID;

/*-----*/

# b) Es sollen alle Kunden (ID, Vorname, Nachname) ausgegeben werden, die nach der letzten Abrechnung von Kunden 4 noch die Seite von „Geld_her“ besucht (*) haben.
# Subquery
SELECT MAX(Datum)
FROM abrechnung
WHERE abrechnung.Kunde_ID = 4;

# b)
SELECT DISTINCT kunde.Kunde_ID, Vorname, Nachname
FROM kunde, abrechnung
WHERE kunde.Kunde_ID = abrechnung.Kunde_ID
AND Datum >
(
  SELECT MAX(Datum)
  FROM abrechnung
  WHERE abrechnung.Kunde_ID = 4;
);

/*-----*/

# c) Es sollen alle Kunden (Vorname, Nachname) ausgegeben werden, die vor dem November 2021 mindestens eines jener Produkte gekauft haben, die dann auch während des Novembers gekauft worden sind.
# Subquery
SELECT Produkt_ID
FROM abrechnung, abrechnung_produkt
WHERE abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechung_ID
AND Datum BETWEEN 2021-11-01 AND 2021-11-30;

# c)
SELECT DISTINCT Vorname, Nachname
FROM kunde, abrechnung, abrechnung_produkt
WHERE kunde.Kunde_ID = abrechnung.Kunde_ID
AND abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechung_ID
AND Datum <= 2021-10-31
AND Produkt_ID IN
(
  SELECT Produkt_ID
  FROM abrechnung, abrechnung_produkt
  WHERE abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechung_ID
  AND Datum BETWEEN 2021-11-01 AND 2021-11-30;
);

/*-----*/

# d) Es sollen alle Produkte (ID und Name) jener Hersteller ausgegeben werden, von denen mindestens ein Produkt stammt, das auf der Abrechnung 1 bestellt wurde.
# Subquery
SELECT DISTINCT Hersteller_ID
FROM abrechnung_produkt, produkt, hersteller
WHERE abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
AND produkt.Hersteller_ID = hersteller.Hersteller_ID  
AND Abrechnung_ID = 1;

# d)
SELECT Produkt_ID, Produkt_Name
FROM produkt
AND Hersteller_ID IN
(
  SELECT DISTINCT Hersteller_ID
  FROM abrechnung_produkt, produkt
  WHERE abrechnung_produkt.Produkt_ID = produkt.Produkt_ID  
  AND Abrechnung_ID = 1;
);

/*-----*/

# e) Es sollen alle Abrechnungen (ID, Datum, Anzahl der bestellten Produkte) ausgegeben werden, bei denen mehr Produkte bestellt wurden, als Contrabit bei „Geld_her“ Produkte im Sortiment hat.
# Subquery
SELECT COUNT(Produkt_ID)
FROM produkt, hersteller
WHERE produkt.Hersteller_ID = hersteller.Hersteller_ID
AND Hersteller_Name = "Contrabit";

# e)
SELECT abrechnung.Abrechnung_ID, Datum, COUNT(Produkt_ID)
FROM abrechnung, abrechnung_produkt
WHERE abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechung_ID
GROUP BY abrechnung.Abrechnung_ID
HAVING COUNT(Produkt_ID) >
(
  SELECT COUNT(Produkt_ID)
  FROM produkt, hersteller
  WHERE produkt.Hersteller_ID = hersteller.Hersteller_ID
  AND Hersteller_Name = "Contrabit";
);

/*-----*/

# f) Es sollen all jene Speditionen (ID, Name und Anzahl der transportierten Produkte) ausgegeben werden, die jeweils mehr Produkte transportierten als Kunde 3 bisher bestellte. Ausgabe alphabetisch nach Speditionsname sortiert.
# Subquery
SELECT COUNT(Produkt_ID)
FROM abrechnung, produkt
WHERE abrechnung.Abrechnung_ID = abrechnung_produkt.Abrechung_ID
AND Kunde_ID = 3;

# f)
SELECT spedition.Spedition_ID, Spedition_Name, COUNT(abrechnung_produkt.Produkt_ID)
FROM abrechnung_produkt, produkt, hersteller, spedition
WHERE abrechnung_produkt.Produkt_ID = produkt.Produkt_ID
AND produkt.Hersteller_ID = hersteller.Hersteller_ID
AND hersteller.Spedition_ID
