# a)
DELETE FROM Kuchen
WHERE id > 3 AND id < 9;

# b)
DELETE FROM Kuchen
WHERE hersteller_id = 3 AND preis_euro > 20;

# c)
DELETE FROM Kuchen
WHERE kalorien > 900 AND gewicht_gramm < 300;

# d)
DELETE FROM Kuchen
WHERE NOT (gewicht_gramm = 1000 OR kalorien = 1000);

# e)
DELETE FROM Kuchen
WHERE NOT (hersteller_id = 3 OR volumen_cm3 < 700);

# f)
DELETE FROM Kuchen
WHERE id < 12 XOR preis_euro > 30;

# g)
DELETE FROM Kuchen
WHERE hersteller_id = 1 OR kalorien = 1 OR gewicht_gramm = 1;
