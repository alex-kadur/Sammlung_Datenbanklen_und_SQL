# Aufgabe_03_05_01

---

## Formulieren Sie bitte entsprechende SQL-Anweisungen für folgende Aufgabestellungen: 

- a) Es sollen alle Kunden (ID, Vorname, Nachname) ausgegeben werden, die den gleichen Nachnaamen wie Kunde 3 haben. 
- b) Identische Ausgabe wie in a), nun aber mit Ausnahme von Kunde 3.
- c) Es sollen alle „teuersten Produkte“ (ID, Produktname und Preis) ausgegeben werden. 

  - Hinweise: 
  - (1) Bekanntlich kann es mehrere Produkte geben, die sich gemeinsam den Titel „teuerstes Produkt“ teilen, da sie untereinander den identischen Preis haben, aber teurer als alle anderen Produkte sind.
  - (2) Diese Aufgabe konnten wir bisher weder mittels GROUP BY lösen (denn wir konnten dem maximalen Preis nicht „den“ entsprechenden Produktnamen zuordnen) …
  - … noch mittels ORDER BY Euro_Preis DESC LIMIT x (denn wir kannten x nicht).

- d) Es sollen alle Kunden (Vorname, Nachname) ausgegeben werden, die bisher weniger Produkte bestellten, als alleine auf der Abrechnung 3 bestellt worden sind.
- e) Es soll die Anzahl der Produkte ermittelt werden, die billiger sind als die Gesamtbestellsumme von Kunde 5.
