# Aufgabe_03_04_04

---

Wir verwenden wieder die Datenbank A_03_04x.sql.

## Aufgabestellungen:

Formulieren Sie bitte die folgenden SQL-Anweisungen: 

- a) Anzahl der Prüfungen von Axels Ast, die er mit einer Note besser 3 bestanden hat. 
- b) Pro Student (ID und Nachname) soll die Summe der Unterrichtsstunden ermittelt werden. Es sollen aber nur diejenigen Fächer berücksichtigt werden, zu denen der jeweilige Student auch eine Prüfung absolviert hat. Ausgabe nach Anzahl absteigend sortiert. 
- c) Es kommt der Verdacht auf, dass die Datenbank inkonsistent ist. Geben Sie bitte alle Studenten (ID, Nachname, Immatrikulations- und Exmatrikulations-Datum) aus, die an Prüfungen (ID und Datum) teilnahmen, obwohl sie zu diesem Zeitpunkt nicht immatrikuliert (= in der Universität eingeschrieben) waren.
- d) Die Hilfstabelle Student_Pruefung hat 10 Datensätze. Das bedeutet, dass 10-mal ein bestimmter Student an einer bestimmten Prüfung teilnahm. Ermitteln Sie bitte die Anzahl der „unzulässigen“ Prüfungen, bei denen der Student eine Prüfung zu einem Studienfach absolvierte, das er bisher noch nicht belegt hat. Hinweis:
  - Die Differenz von 10 minus „Anzahl der zulässigen Prüfungen“ gibt an, wie viele Prüfungen unzulässig waren
  - Ausschnitt der Syntax: `SELECT 10 - COUNT(…) AS "Anzahl der unzulässigen Prüfungen" FROM …`

