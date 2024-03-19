# a)
DELETE FROM Autos
WHERE ps > 100 AND baujahr < 1990;

# b)
DELETE FROM Autos
WHERE besitzer_id < 12 AND preis >= 8000;

# c)
DELETE FROM Autos
WHERE preis > 10000 OR hersteller_id = 5;

# d)
DELETE FROM Autos
WHERE baujahr < 1970 XOR preis=12000;

# e)
DELETE FROM Autos
WHERE preis < baujahr AND NOT (hersteller_id = 7);

# f)
DELETE FROM Autos
WHERE besitzer_id<=10 AND hersteller_id<=10;

# g)
DELETE FROM Autos
WHERE preis < ps AND id > baujahr;

# h)
DELETE FROM Autos
WHERE ps > 17 OR preis > 17 OR id > 17;

#i)
DELETE FROM Autos
WHERE ps > 17 AND preis > 17 AND id > 17;

#j)
DELETE FROM Autos
WHERE (ps > 17 XOR preis > 17 XOR id > 17) AND NOT (ps > 17 AND preis > 17 AND id > 17) 
# erste Klammer wahr, wenn 1 Aussage ODER 3 Aussagen wahr
# zweite Klammer schließt den Fall "3 wahre Aussagen" aus

# Kommentar aus Musterloesung:
# XOR-Ketten sind genau dann wahr, wenn die Anzahl der wahren Aussagen UNGERADE ist. 
# Beispiel: A XOR B XOR C XOR D ist wahr, wenn 1 oder wenn 3 Aussagen wahr sind
# ACHTUNG: Klammern sind hier überflüssig; XOR ist „assoziativ“
