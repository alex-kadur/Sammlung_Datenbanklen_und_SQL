# a) Anzahl der Prüfungen von Axels Ast, die er mit einer Note besser 3 bestanden hat.
SELECT COUNT(Pruefung_ID AS "Axel Ast bestanden besser 3"
FROM student, student_pruefung
WHERE student.Student_ID = student_pruefung.Student_ID
AND (Vorname = "Axel" AND Nachname = "Ast")
AND Note < 3;

# b) Pro Student (ID und Nachname) soll die Summe der Unterrichtsstunden ermittelt werden. Es sollen aber nur diejenigen Fächer berücksichtigt werden, zu denen der jeweilige Student auch eine Prüfung absolviert hat. Ausgabe nach Anzahl absteigend sortiert.
SELECT student.Student_ID, Nachname, ifNULL(SUM(Dauer_Stunden), 0) AS "Summe Unterrichtsstunden mit Pruefung"
FROM student
LEFT JOIN student_pruefung ON student.Student_ID = student_pruefung.Student_ID
LEFT JOIN pruefung ON student_pruefung.pruefung_ID = pruefung.Pruefung_ID
LEFT JOIN studienfach ON pruefung.Studienfach_ID = studienfach.Studienfach_ID
AND pruefung.Studienfach_ID = studienfach.Studienfach_ID
GROUP BY student.Student_ID
ORDER BY "Summe Unterrichtsstunden mit Pruefung" DESC;

# c) Es kommt der Verdacht auf, dass die Datenbank inkonsistent ist. Geben Sie bitte alle Studenten (ID, Nachname, Immatrikulations- und Exmatrikulations-Datum) aus, die an Prüfungen (ID und Datum) teilnahmen, obwohl sie zu diesem Zeitpunkt nicht immatrikuliert waren.
SELECT student.Student_ID, Nachname, Datum_Immatrikulation, Datum_Exmatrikulation, pruefung.Pruefung_ID, Datum_Pruefung
FROM student, student_pruefung, pruefung
WHERE student.Student_ID = student_pruefung.Student_ID
AND student_pruefung.pruefung_ID = pruefung.Pruefung_ID
AND (Datum_Pruefung < Datum_Immatrikulation OR Datum_Pruefung > Datum_Exmatrikulation);

# d) Die Hilfstabelle Student_Pruefung hat 10 Datensätze. Das bedeutet, dass 10-mal ein bestimmter Student an einer bestimmten Prüfung teilnahm. Ermitteln Sie bitte die Anzahl der „unzulässigen“ Prüfungen, bei denen der Student eine Prüfung zu einem Studienfach absolvierte, das er bisher noch nicht belegt hat.
SELECT 10-COUNT(*) AS "Anzahl der unzulässigen Prüfungen"
FROM student, student_pruefung, pruefung, student_studienfach, studienfach
WHERE student.Student_ID = student_pruefung.Student_ID
AND student_pruefung.Pruefung_ID = pruefung.Pruefung_ID
AND pruefung.Studienfach_ID = studienfach.Studienfach_ID
AND student.Student_ID = student_studienfach.Student_ID
AND student_studienfach.Studienfach_ID = studienfach.Studienfach_ID;
