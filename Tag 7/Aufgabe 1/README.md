# Aufgabe_03_02_01

---

## Vorbemerkung:

- Implementieren Sie bitte zunächst den Code aus dem Dokument A_03_02_01.sql.
- Studieren Sie bitte anschließend die dort notierten Bemerkungen, insbesondere, um jene Datensätze der Tabellen Mitarbeiter, Auto und Parkplatz kennenzulernen, die keinem Datensatz einer anderen Tabelle zugeordnet werden können.

## Führen Sie bitte anschließend alle folgenden Varianten durch:

```
SELECT 
    mitarbeiter.mitarbeiter_bezeichnung,
    fahrzeug.fahrzeug_bezeichnung,
    parkplatz.parkplatz_bezeichnung     
Mitarbeiter (INNER, LEFT, RIGHT) JOIN Fahrzeug ON …
(INNER, LEFT, RIGHT) JOIN Parkplatz ON …;
```

Betrachten Sie hierfür bitte zunächst die Zwischenlösung von:

```
SELECT 
    mitarbeiter.mitarbeiter_bezeichnung,
    fahrzeug.fahrzeug_bezeichnung,
    parkplatz.parkplatz_bezeichnung
Mitarbeiter (INNER, LEFT, RIGHT) JOIN Fahrzeug ON …;
```

und ergänzend Sie bitte erst anschließend durch: 

```
    … (INNER, LEFT, RIGHT) JOIN Parkplatz
```


Versuchen Sie bitte zunächst in allen Fällen theoretisch zu durchdenken, welche Ausgabe erscheinen wird, bevor Sie den jeweiligen Befehl tatsächlich ausführen lassen und erläutern Sie bitte das tatsächliche Ergebnis schriftlich.
