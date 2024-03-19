# Aufgabe_02_04_01

---

## Ausschnitt eines Datenbankschemas:

|Kuchen|
|---|
|id|
|hersteller_id|
|kalorien|
|gewicht_gramm|
|preis_euro|
|volumen_cm3|

## Aufgabenstellung:

Formulieren Sie bitte für alle folgenden Lösch-Aufträge eine entsprechende WHERE-Klausel:

**DELETE FROM Kuchen WHERE(…)**

- a) Alle Kuchen mit einer id größer 3 und kleiner 9.
- b) Alle Kuchen von Hersteller (3), die teurer als 20,- € sind.
- c) Alle Kuchen mit mehr als 900 Kalorien, falls diese weniger als 300 Gramm wiegen.
- d) Nur Kuchen, die weder 1 kg wiegen, noch 1000 Kalorien haben.
- e) Fast alle Kuchen, Ausnahmen sind allerdings Kuchen von Hersteller 3 und solche, deren Volumen unter 700 cm3 liegen.
- f) Alle Kuchen, die entweder eine ID kleiner 12 haben, oder einen Preis größer 30 €.
- g) Alle Kuchen, die von Hersteller 1 stammen, ebenfalls alle Kuchen, die genau 1 Kalorie haben, und ferner alle Kuchen, die genau 1 Gramm wiegen.
