# Aufgabe: 02_02_04

---

## Ausgangssituation:

In einer Apothekenkette ist für jede Filiale deren Adresse und alle Mitarbeiter bekannt, die dort arbeiten. Von jedem Mitarbeiter ist der Name bekannt.
Für alle Medikamente ist deren Name, Preis (€) und alle Filialen bekannt, in denen diese Medikamente angeboten werden. Ebenso sind für jedes Medikament alle Krankheiten bekannt, die durch dieses Medikament bekämpft werden können.  Für alle Krankheiten ist deren deutscher und lateinischer Name bekannt.

Bemerkungen:
Jeder Mitarbeiter ist einer eindeutigen Filiale zugeordnet.
Es gibt Medikamente, die mehrere Krankheiten bekämpfen können.


## Aufgabenstellung:

a)	Erstellen Sie bitte zunächst ein entsprechendes ER-Modell.<br>
b)	Überführen Sie dieses bitte in ein RDB-Schema in der 3. Normalform.<br>
c)	Implementieren Sie bitte das Schema auf ihrem Rechner.<br>
d)	Erstellen Sie bitte für folgende Aufgaben die entsprechenden SQL-Anweisungen:

(1)	Für alle Mitarbeiter sollen alle Krankheiten bekannt sein, die diese bereits hatten. Ergänzen Sie die Datenbank bitte entsprechend.<br>
(2)	Für jedes Medikament soll bekannt sein, welcher (eindeutige) Hersteller dieses Medikament produziert. (Hersteller: Name und Adresse)<br>
(3)	Da zukünftig Mitarbeiter (als „Springer“) in mehreren Filialen eingesetzt werden können, soll die Beziehung Mitarbeiter<->Filiale korrigiert werden.
