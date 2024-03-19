# Aufgabe_03_04_01

---

## Formulieren Sie bitte entsprechende SQL-Anweisungen für folgende Aufgabestellungen: 

- a)	Pro Kunde soll die Kunde-ID, der Nachname und seine maximale Abrechnungs-ID ausgegeben werden. Es sollen aber auch Kunden berücksichtigt werden, denen keine Abrechnung zugeordnet werden kann. (Es muss dann solchen Kunden natürlich ein „NULL“ anstelle des Maximums zugewiesen werden).
- b)	Pro Kunde soll Kunde-ID, Email-Adresse und der Preis des teuersten von ihm bisher gekauften Produkts ausgegeben werden. Es sollen aber nur Produkte mit Preisen unter 80 Euro berücksichtigt werden. Hinweis: Erneut gilt, dass Kunden, die nichts kauften, dennoch ausgegeben werden sollen [anstelle des Maximalpreises soll dann „keine Angabe“ erscheinen]. Ferner soll aber auch gelten, dass Kunden erscheinen sollen, selbst wenn diese ausschließlich Produkte kauften, die mindestens 80 Euro kosten [ebenfalls mit der Ausgabe „keine Angabe“]. Überlegen Sie bitte, „wo“ die Bedingung „Euro_Preis<80“ notiert werden soll [im ON? oder im WHERE?] … begründen Sie bitte schriftlich.
- c)	Pro Hersteller soll die ID, der Name und die Anzahl der im November 2021 bestellten Produkte dieses Herstellers ausgegeben werden. Ausgabe sortiert nach Anzahl absteigend.
- d)	Pro Abrechnung von Witali Myrnow soll die Abrechnungs-ID, das Datum und die Anzahl der auf dieser Abrechnung bestellten Produkte ausgegeben werden. Ausgabe chronologisch nach Datum sortiert. Es sollen aber nur Abrechnungen berücksichtigt werden, auf denen mindestens 2 Produkte bestellt wurden. (Zusatzfrage: Ist hier ein LEFT oder RIGHT JOIN notwendig? Bitte begründen Sie Ihre Antwort schriftlich.)


