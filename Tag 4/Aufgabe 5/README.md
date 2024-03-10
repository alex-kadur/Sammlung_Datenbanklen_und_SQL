# Aufgabe 02_04_05

---

## Ausgangssituation:

Von jeder Person sind Name, Alter, Adresse und alle Lieder bekannt, die diese Person beherrscht. Von jedem Lied sind Titel und Erscheinungsjahr bekannt.  

## Aufgabenstellung:

- a) Erstellen Sie bitte zunächst ein entsprechendes ER-Modell.
- b) Überführen Sie dieses bitte in ein RDB-Schema in der 3. Normalform.
- c) Implementieren Sie bitte das Schema auf ihrem Rechner.
- d) Führen Sie bitte die neue Beziehung „ist Komponist von“ zwischen den Tabellen Person und Lied ein. (Wir gehen davon aus, dass jedem Lied ein eindeutiger Komponist zugeordnet werden kann.)
- e) Pflegen Sie bitte die vorliegenden Daten (siehe A_02_04_05.png) ein.
- f) Erstellen Sie bitte geeignete SQL-Anweisungen zu den folgenden Aufgabenstellungen:
  - (1) Löschen Sie bitte alle Personen, die mit Nachnamen „Baumann“ heißen. Ausnahme sind aber Personen, die nach 1970 geboren wurden.
  - (2) Löschen Sie bitte alle Personen, für die gilt, dass diese weder in Aachen wohnen, noch nach 1981 geboren wurden. 
  - (3) Löschen Sie bitte alle Lieder, die im Jahr 2000 erschienen sind und von einer Person komponiert wurden, deren ID<10 ist.
  - (4) Löschen Sie bitte alle Datensätze der Hilfstabelle, für die beide Werte kleiner 10 sind.
 
