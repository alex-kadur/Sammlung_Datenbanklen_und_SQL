# Aufgabe_04_01_03

---

- Verwenden Sie bitte die Datenbank A_03_04_x.sql.

## Aufgabestellungen:

Formulieren Sie bitte entsprechende SQL-Anweisungen: 

- a) Die Datensätze aus Student_Studienfach und die Datensätze aus Student_Prüfung sollen unter den gemeinsamen Überschriften „Fremdschlüsselwert 1“ und „Fremdschlüsselwert 2“ in einer einzigen Tabelle ausgegeben werden.
- b) Es soll zukünftig möglich sein, einzelne Studenten zu löschen. Dies soll unter Wahrung der Referentiellen Integrität geschehen. Dabei sollen jedoch keine Entitäten gelöscht werden, die sich auf den zu löschenden Studenten beziehen. Allerdings soll dieser Bezug anonymisiert werden. Hinweise:
  - (1) Beachten Sie bitte, dass ein Primärschlüsselwert Default-mäßig NOT NULL ist (was dann auch für alle Attribute eines zusammengesetzten Primärschlüssels gilt.)
  - (2) Die (zusammengesetzte) Primärschlüssel-Eigenschaft in „Student_Pruefung“ kann mittels ALTER TABLE Student_Pruefung DROP PRIMARY KEY gelöscht werden.
  - (3) Löschen Sie bitte zuerst die für diese Aufgabe relevanten Fremdschlüsselbeziehungen und erst anschließend die angesprochene Primärschlüssel-Eigenschaft.

- c)  Für jeden Studenten (Vorname und Nachname) sollen alle Prüfungen (Name des Studienfachs und Datum) ausgegeben werden. Dies soll aber auch für Studenten gelten, die bisher keine Prüfung absolvierten und ebenso für Prüfungen, die bisher von keinem Studenten belegt worden sind.
- d) Ändern Sie bitte die Struktur der Datenbank dahingehend das folgendes gilt: Wenn eine bestimmte Prüfung gelöscht wird, so werden auch alle Datensätze gelöscht, die sich auf diese Prüfung beziehen.
