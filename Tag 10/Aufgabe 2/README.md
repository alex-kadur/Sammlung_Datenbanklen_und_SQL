# Aufgabe_03_05_02

---

## Formulieren Sie bitte entsprechende SQL-Anweisungen für folgende Aufgabestellungen: 

- a) Es sollen (fast) alle Produkte (ID, Produktname und Preis) ausgegeben werden. Ausnahme soll jedoch das Produkt mit der größten ID sein. Ausgabe numerisch sortiert nach Produkt-ID. 
- b) Es sollen alle Kunden (ID, Vorname, Nachname) ausgegeben werden, die nach der letzten Abrechnung von Kunden 4 noch die Seite von „Geld_her“ besucht (*) haben.
- c) Es sollen alle Kunden (Vorname, Nachname) ausgegeben werden, die vor dem November 2021 mindestens eines jener Produkte gekauft haben, die dann auch während des Novembers gekauft worden sind.
- d) Es sollen alle Produkte (ID und Name) jener Hersteller ausgegeben werden, von denen mindestens ein Produkt stammt, das auf der Abrechnung 1 bestellt wurde.
- e) Es sollen alle Abrechnungen (ID, Datum, Anzahl der bestellten Produkte) ausgegeben werden, bei denen mehr Produkte bestellt wurden, als Contrabit bei „Geld_her“ Produkte im Sortiment hat.
- f) Es sollen all jene Speditionen (ID, Name und Anzahl der transportierten Produkte) ausgegeben werden, die jeweils mehr Produkte transportierten als Kunde 3 bisher bestellte. Ausgabe alphabetisch nach Speditionsname sortiert.

- (*) Zur Erinnerung (siehe auch: V_02_01, Folie 10)
- Ein Kunde kann die Seite von „Geld_her“ besuchen, OHNE etwas zu bestellen. Dennoch wird ihm bei jedem Besuch bereits eine Abrechnungs-ID zugewiesen. Beispiel: Peter Kaufnix (7) besuchte die Seite von „Geld_her“ und erhielt hierbei die Abrechnungs-ID 10. In der Hilfstabelle findet sich aber kein einziger Datensatz mit dieser Abrechnungs-ID, denn Peter Kaufnix besuchte die Seite zwar, bestellte aber nichts.
