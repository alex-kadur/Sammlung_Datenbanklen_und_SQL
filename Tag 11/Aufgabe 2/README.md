# Aufgabe_04_01_02

---

## Aufgabestellungen:

Formulieren Sie bitte entsprechende SQL-Anweisungen: 

- a) Es soll ein Produkt gelöscht werden. Ändern Sie bitte die Struktur der Datenbank dahingehend, dass dies geschehen kann, ohne dass die Referentielle Integrität verletzt wird. (Hinweis: Gehen Sie bitte aus Trainingsgründen davon aus, dass Ihnen die interne Namensgebung der zu bearbeitenden Fremdschlüsselbeziehung nicht bekannt ist.)
- b) Auch zukünftig soll es möglich sein, Kunden zu löschen, ohne die Referentielle Integrität der Datenbank zu verletzen. Das Finanzamt verlangt allerdings, dass alle Abrechnungen erhalten bleiben, also auch jene, die dem zu löschenden Kunden zugeordnet sind. Aus Datenschutzgründen sollen diese allerdings anonymisiert werden. Dies bedeutet, dass der Fremdschlüsselwert (Kunde-ID) der entsprechenden Abrechnungen auf „NULL“ gesetzt werden muss. Aufgaben: 
  - (1) Sorgen Sie bitte dafür, indem Sie die Fremdschlüsseloption von Kunde-ID in Abrechnung auf „ON DELETE SET NULL“ setzen. 
  - (2) Beachten Sie bitte, dass diese Fremdschlüssel-Option nur wirksam werden kann, wenn für den Fremdschlüssel der Wert NULL zulässig ist.
  - (3) Testen Sie bitte Ihre Maßnahmen durch das Löschen von Kunden 2.
- c) Nutzen Sie bitte die Datenbank aus A_03_02_01.sql. Dort finden Sie in den Kommentaren eine Form von „Pseudocode“, bzw. die Darstellung einer Ausgabe des FULL JOINs von Mitarbeiter, Fahrzeug und Parkplatz. Ersetzen Sie diesen Pseudocode bitte durch einen entsprechenden MySQL-Code. 
