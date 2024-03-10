# Aufgabe_02_04_03

---

## Ausschnitt eines Datenbankschemas:

|Grundstuecke|
|---|
|Breite| 
|Laenge|
|Preis|
|Besitzer|
|Ort|
|ID|

## Aufgabenstellung:

Formulieren Sie bitte für alle folgenden Lösch-Aufträge eine entsprechende WHERE-Klausel:

**DELETE FROM Grundstücke WHERE(…)*

- a) Alle Grundstücke, deren Breite oder Länge unter 15 (Einheit ignorieren wir) liegt.
- b) Alle Grundstücke aus den Orten „Hamburg“, „Kassel“ und „Bielefeld“.
- c) Alle Grundstücke des Besitzers „Mustermann“, falls diese in Bochum liegen.
- d) Alle Grundstücke mit den id´s 3, 7und 9, bei jedem einzelnen Grundstück aber nur, falls der Preis des jeweiligen Grundstücks über 1 Million liegt.
- e) Alle Grundstücke bei der weder die Breite noch die Länge über 200 liegt.
- f) Alle Grundstücke aus Essen, falls deren id nicht kleiner als 100.
- g) Alle Grundstücke von Müller, falls der jeweilige Preis nicht zwischen (beiderseits ausschließlich) den Beträgen 1000 und 2000 liegt.
- h) Alle Grundstücke, die nicht in Bochum liegen. Ausnahme sind Grundstücke aus Berlin, oder solche, deren Preis kleiner oder gleich 5000 ist.
- i) Alle Grundstücke, deren id größer als ihre jeweilige Breite ist, sofern ihr Preis größer als 100 und größer als die Länge. Ausnahme sind Grundstücke von „Mustermann“ oder aus Kiel ;D  
