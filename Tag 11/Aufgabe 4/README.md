# Aufgabe_04_01_04

---

- Verwenden Sie bitte die Datenbank aus A_03_05_04_x.sql.

## Aufgabestellungen: 

Formulieren Sie bitte entsprechende SQL-Anweisungen: 

- a) Ändern Sie bitte die Struktur der Datenbank dahingehend, dass bei dem zukünftigen Löschen eines Hauses alle auf dieses Haus referenzierenden Mieter erhalten bleiben, ihre Haus-ID allerdings auf NULL gesetzt wird, während die auf das zu löschende Haus referenzierenden Geschäfte zusammen mit dem Haus gelöscht werden sollen.
- b) Löschen Sie bitte zu Testzwecken Haus 1. Ergebnis sollte nun sein, dass dann auch das Café in diesem Haus gelöscht wird, während seine beiden Mieter allerdings erhalten bleiben, nun aber den Fremdschlüsselwert „Haus_ID“=NULL besitzen. Führen Sie bitte ferner ein weiteres Geschäft ein (ID=3, Haus-ID=NULL, Branche="Supermarkt").
- c) Es sollen nun alle Häuser (Haus-ID und Standort) zusammen mit all ihren Mietern (Nachname) und Geschäften (Branchenbezeichnung) ausgegeben werden. Das soll allerdings auch für Mieter und Geschäfte gelten, die aktuell keinem Haus der Datenbank zugeordnet werden können (deren Haus-ID also den Wert NULL hat).
