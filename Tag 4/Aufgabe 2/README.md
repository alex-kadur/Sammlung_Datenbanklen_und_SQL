# Aufgabe_02_04_02

---

## Ausschnitt eines Datenbankschemas:

|Autos|
|---|
|ps| 
|baujahr|
|preis|
|besitzer_id|
|hersteller_id|
|id|

## Aufgabenstellung:

Formulieren Sie bitte für alle folgenden Lösch-Aufträge eine entsprechende WHERE-Klausel:

**DELETE FROM Autos WHERE(…)**

- a) Alle Autos mit mehr als 100 PS und zugleich einem Baujahr, das vor 1990 liegt.
- b) Alle Autos, deren Besitzer eine id<12 aufweisen. Allerdings nicht, falls deren Preis unter 8.000,- € liegt.
- c) Alle Autos, die teurer als 10.000 € sind, sowie jene, deren Hersteller die id=5 aufweisen. 
- d) Alle Autos, die entweder vor 1970 gebaut wurden, oder genau 12.000,- € kosten. 
- e) Alle Autos, deren Preis unter ihrem Baujahr liegen. Mit Ausnahme jener Autos, die vom Hersteller (id=7) stammen.
- f) Alle Autos bei denen weder Besitzer- noch Hersteller-ID größer als 10 sind.
- g) Alle Autos bei denen der Preis kleiner als die PS-Zahl ist. Außerdem muss gelten: id > Baujahr.
- h) Alle Autos, bei denen wenigstens eine der drei folgenden Bedingungen erfüllt ist: ps, preis, oder id ist größer als 17.
- i) Alle Autos, bei denen jede der drei folgenden Bedingungen erfüllt ist: ps, preis, und id ist größer als 17.
- j) Alle Autos, bei denen genau eine der drei folgenden Bedingungen erfüllt ist: ps, preis, und id ist größer als 17.
