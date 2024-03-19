# Aufgabe_02_03_04

---

## Ausgangssituation:

Von jeder Person „X“ sind ihr Name, ihr Geburtsdatum und alle Personen bekannt, mit denen X bereits verheiratet war (oder aktuell noch ist). Für jede Ehe ist das Kalenderdatum von Ehe-Beginn und (gegebenenfalls definiert, sonst NULL) das Kalenderdatum von Ehe-Ende bekannt.

## Bemerkungen:
-	Auch gleichgeschlechtliche Partnerschaften sind zulässig (und werden der Einfachheit halber ebenfalls als „Ehe“ bezeichnet).
-	Mittels Datenbankmodellierung muss nicht gewährleistet sein, dass jede Person aktuell höchstens eine Ehe führt. Falls also „Bigamie“ vorliegt, so könnte man dies zwar aus der Datenbank ablesen, die Datenbankmodellierung muss aber nicht verhindern, dass eine „aktuelle Zweit-Ehe“ eingepflegt wird. 

## Aufgabenstellung:

- a)	Erstellen Sie bitte zunächst ein entsprechendes ER-Modell.
- b)	Überführen Sie dieses bitte in ein RDB-Schema in der 3. Normalform.
- c)	Implementieren Sie bitte das Schema auf ihrem Rechner.
- d)	Erstellen Sie bitte für folgende Aufgaben die entsprechenden SQL-Anweisungen:
  - (1)	Führen Sie bitte in der Tabelle Person das Attribut „Anzahl-Ehen-bisher“ ein.
  - (2)	Überlegen Sie bitte, warum dieses neue Attribut ungeschickt und überflüssig ist (begründen Sie bitte schriftlich). Löschen Sie bitte anschließend dieses Attribut.
  - (3)	Führen Sie bitte die neue Beziehung „ist Standesbeamter von“ zwischen den Tabellen Person(en) und Ehe ein. 
- e)	Pflegen Sie bitte die vorliegenden Daten (Abbildung A_02_03_04) ein.
- f)	Erstellen Sie bitte geeignete SQL-Anweisungen zu den folgenden Aufgabenstellungen:
  - (1)	Korrigieren Sie bitte beide Nachnamen aus Ehe(1) zu „Alster-Schulze“.
  - (2)	Charlotte Carlson und Claus Cäsar heiraten am 3. Mai 2023. Standesbeamter ist Egon Ermann (geb. 21.10.1966). Tragen Sie bitte Standesbeamten und Ehe ein.
  - (3)	Ehe(2) wird am 11.11.2022 geschieden. Bitte tragen Sie dies ein.
  - (4)	Doris Dahlmann und Dörte Wurst heiraten am 5. März 2022 beim Standesbeamten Claus Cäsar. Sie einigten sich auf den gemeinsamen Namen „Dahlmann“.
Das Geburtsdatum beider ist aber unbekannt. Bisher ist die Spalte für Geburtsdatum allerdings auf „NOT NULL“ gesetzt. Korrigieren Sie bitte diesen Constraint und tragen Sie bitte anschließend Personen und Ehe ein.
  - (5)	Korrigieren Sie bitte den Namen von „Claus Cäsar“ zu „Klaus Zaesah“. 

