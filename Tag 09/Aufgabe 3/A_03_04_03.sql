# a) Für jeden Studenten soll ID, Vorname, Nachname und die Anzahl der von ihm belegten Studienfächer ausgegeben werden. Ausgabe nach Anzahl absteigend sortiert.
SELECT student.Student_ID, Vorname, Nachname, ifNULL(COUNT(Studienfach_ID), 0) AS "belegten Studienfaecher"
FROM student
LEFT JOIN student_studienfach ON student.Student_ID = student_studienfach.Student_ID
GROUP BY student.Student_ID
ORDER BY "belegten Studienfaecher" DESC;

# b) Für jede Prüfung soll die ID, das Datum und die Anzahl der Teilnehmer ausgegeben werden. Ausgabe chronologisch nach Datum sortiert.
SELECT pruefung.Pruefung_ID, Datum_Pruefung, ifNull(COUNT(Student_ID), 0) AS "Teilnehmer"
FROM pruefung
LEFT JOIN student_pruefung ON pruefung.Pruefung_ID = student_pruefung.Pruefung_ID
GROUP BY pruefung.Pruefung_ID
ORDER BY Datum_Pruefung;

# c) Für jedes Studienfach soll dessen ID, seine Bezeichnung und die Anzahl der Prüfungen ausgegeben werden, die zu diesem Fach bisher abgehalten wurden. Ausgabe nach Anzahl numerisch sortiert.
SELECT studienfach.Studienfach_ID, Bezeichnung, ifNULL(COUNT(Pruefung_ID), 0) AS "Anzahl Pruefungen"
FROM studienfach
LEFT JOIN pruefung ON studienfach.Studienfach_ID = pruefung.Studienfach_ID
GROUP BY studienfach.Studienfach_ID
ORDER BY "Anzahl Pruefungen"

# d) Für jeden Studenten soll ID, Vorname, Nachname und die Anzahl der von ihm bestanden Prüfungen ausgegeben werden. Ausgabe alphabetisch bzgl. Nachnamen sortiert. Es sollen aber nur Prüfungen gezählt werden, in denen mindestens die Note 4 erreicht wurde. Ferner sollen nur Studenten berücksichtigt werden, deren (aktuelle) Durchschnittsnote besser als 4 ist.
SELECT student.Student_ID, Vorname, Nachname, ifNull(COUNT(Pruefung_ID), 0) AS "bestandene Pruefungen"
FROM student
LEFT JOIN student_pruefung ON student.Student_ID = student_pruefung.Student_ID AND Note <= 4;
GROUP BY student.Student_ID
HAVING ifNull(AVG(Note), 1) < 4
ORDER BY Nachname;
