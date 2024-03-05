# Aufgabe_02_02_02

---

## Aufgabenstellung:

Nutzen Sie bitte die Musterlösung ML_02_01_02, mit der sie die drei Tabellen Ausbildung, Firmenwagen und Mitarbeiter implementieren können. Formulieren Sie bitte anschließend geeignete SQL-Anweisungen für die folgenden Aufgabenstellungen:

a)	Fügen Sie bitte zur Tabelle „Ausbildung“ das Attribut „Ausbildungs_Dauer_in_Monaten“ (Integer, NOT NULL).
b)	 Verringern Sie bitte den Speicherbedarf beim Attribut „Bezeichnung“ (siehe Tabelle „Ausbildung“) auf 30 Zeichen.
c)	Geben Sie bitte der Tabelle „Ausbildung“ den neuen Namen „Qualifikation“.
d)	Implementieren Sie bitte die neue Tabelle „Marke“ (mit dem Nichtschlüssel-Attribut „Markenname“, VARCHAR(50), NOT NULL).
e)	Fügen Sie bitte zur Tabelle Firmenwagen den Fremdschlüssel „Marke_ID“ hinzu, der auf den Primärschlüssel der Tabelle „Marke“ referenziert.
f)	Ändern Sie bitte den Attributnamen „Kennzeichen“ (in der Tabelle „Firmenwagen“) zu „Kfz_Zeichen“;
g)	Ändern Sie bitte den Tabellennamen „Mitarbeiter“ zu „Kollege“.
h)	Ändern Sie bitte in der ehemaligen(!) „Mitarbeiter“-Tabelle das Attribut „Nachname“ in „Familienname“ (30 Zeichen, NULL erlaubt).
i)	Löschen Sie bitte den Fremdschlüssel „Firmenwagen_ID“ aus der ehemaligen „Mitarbeiter“-Tabelle.
