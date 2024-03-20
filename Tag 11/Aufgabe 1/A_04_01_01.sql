# a) Der Besitzer von „Geld_her“ wollte eine Spedition löschen, erhielt allerdings eine Fehlermeldung. Ändern Sie bitte die Struktur der Datenbank, damit dies zukünftig ohne Verletzung der Referentiellen Integrität möglich ist.
ALTER TABLE hersteller
DROP FOREIGN KEY hersteller_ibfk_1;

ALTER TABLE hersteller
ADD FOREIGN KEY(Spedition_ID)
REFERENCES spedition(Spedition_ID)
ON DELETE CASCADE;

ALTER TABLE produkt
DROP FOREIGN KEY produkt_ibfk_1;

ALTER TABLE produkt
ADD FOREIGN KEY(Hersteller_ID)
REFERENCES hersteller(Hersteller_ID)
ON DELETE CASCADE;

ALTER TABLE abrechnung_produkt
DROP FOREIGN KEY abrechnung_produkt_ibfk_2;

ALTER TABLE abrechnung_produkt
ADD FOREIGN KEY(Produkt_ID)
REFERENCES produkt(Produkt_ID)
ON DELETE CASCADE;
  
# b) Alle Kunden (Kunde-ID und Vorname), alle Produkte (Produkt-ID und Produktnamen) und alle Hersteller (Hersteller-ID und Herstellername) sollen unter den Unterschriften „ID“ und „Entitäten-Name“ ausgegeben werden.
SELECT Kunde_ID AS "ID", Vorname AS "Entitaeten-Name"
FROM kunde

UNION

SELECT Produkt_ID, Produkt_Name
FROM produkt

UNION

SELECT Hersteller_ID, HErsteller_Name
FROM Hersteller  
  
# c) Für alle Kunden (Vorname und Nachname) sollen alle Speditionen (Name) ausgegeben werden, die ihn bereits mindestens 1-mal belieferten. Es sollen aber auch Kunden ausgegeben werden, die bisher noch nichts bestellten. Ebenso sollen auch Speditionen aufgeführt werden, die bisher noch kein Produkt von „Geld_her“ ausgeliefert haben.

SELECT Vorname, Nachname, Spedition_Name
FROM kunde
LEFT NATURAL JOIN abrechnung
LEFT NATURAL JOIN abrechnung_produkt
LEFT NATURAL JOIN produkt
LEFT NATURAL JOIN hersteller
LEFT NATURAL JOIN spedition

UNION

SELECT Vorname, Nachname, Spedition_Name
FROM kunde
RIGHT NATURAL JOIN abrechnung
RIGHT NATURAL JOIN abrechnung_produkt
RIGHT NATURAL JOIN produkt
RIGHT NATURAL JOIN hersteller
RIGHT NATURAL JOIN spedition
