# Aufgabe_02_04_04

---

## Ausschnitt eines Datenbankschemas:

|Person|
|---|
|Vorname| 
|Nachname|
|Strasse|
|Hausnummer|
|PLZ|
|Ort|

## Aufgabenstellung:

Beschreiben Sie bitte schriftlich, welche Datensätze durch die folgenden Statements gelöscht werden:

- a) DELETE FROM Person WHERE Nachname=“Müller“ AND NOT Vorname=“Peter“;
- b) DELETE FROM Person WHERE Hausnummer>100 OR Ort=“Hamburg“;
- c) DELETE FROM Person WHERE Hausnummer>100 AND Hausnummer<1000;
- d) DELETE FROM Person WHERE Vorname=Nachname OR Hausnummer=PLZ;
- e) DELETE FROM Person WHERE PLZ >10 OR PLZ <100;
- f) DELETE FROM Person WHERE NOT(PLZ=4711 OR Hausnummer=123);
- g) DELETE FROM Person WHERE PLZ=1 OR PLZ=3 OR PLZ=5;
- h) DELETE FROM Person WHERE PLZ=1 AND PLZ=3 AND PLZ=5;
- i) DELETE FROM Person WHERE PLZ=1 XOR PLZ=3 XOR PLZ=5;
