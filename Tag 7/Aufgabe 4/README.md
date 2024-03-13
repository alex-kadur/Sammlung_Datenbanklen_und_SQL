# Aufgabe_03_02_04

---

## Formulieren Sie bitte entsprechende SQL-Anweisungen für folgende Aufgabestellungen: 

(Überlegen Sie nun bitte selbst, in welchen Fällen der Einsatz von DISTINCT sinnvoll ist)

- a)	Für jeden Kunden mit einer Kunden-ID größer als 2 soll Vorname, Nachname und Email-Adresse ausgegeben werden, sofern dieser Kunde mindestens 1 Produkt nach dem 30. April 2021 bestellte, das teurer als 30 Euro ist. Die Ausgabe soll alphabetisch nach 1.) Nachname und 2.) Vorname geschehen. Lösung OHNE WHERE-Klausel.
- b)	Für jeden Einkauf eines Exemplars soll der Produktname und die Abrechnungs-ID ausgegeben werden, sofern das Produkt weniger als 100 Euro kostet. Ferner sollen aber auch die Namen jener Produkte ausgegeben werden, die bisher noch nicht bestellt wurden, allerdings NUR, wenn sie weniger als 100 Euro kosten!
- c)	Für jeden Hersteller soll der Herstellername ausgegeben werden, sofern mindestens eines seiner Produkte bestellt wurde. Ausgabe sortiert nach Herstellernamen abfallend. Lösung OHNE WHERE-Klausel. 
- d)	Für jedes Produkt sollen Name und Preis ausgegeben werden, zusammen mit dem Herstellernamen und dem Speditionsnamen jener Spedition, die dieses Produkt (im Falle einer Bestellung) transportieren würde. Ausgabe alphabetisch nach 1. Speditionsname und 2. Produktnamen sortiert. Es sollen aber nur Produkte berücksichtigt werden, die zwischen (beiderseits einschließlich) 30 und 200 Euro kosten. Ferner soll aber auch der Name jener Speditionen und (gegebenenfalls) Herstellern erscheinen, die keinem Produkt im Sortiment von „Geld_her“ zugeordnet werden können, oder der obigen Preis-Bedingung nicht genügen!
