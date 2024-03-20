# a) Gesucht werden alle Häuser, die in dem Wohnort von Hausbesitzer(ID=2) stehen.
# Subquery
SELECT Wohnort
FROM hausbesitzer
WHERE hausbesitzer_ID = 2; 

# a)
SELECT Haus_ID
FROM haeuser
WHERE Standort =
(
  SELECT Wohnort
  FROM hausbesitzer
  WHERE Hausbesitzer_ID = 2
);

# b) Gesucht werden alle Standorte von jenen Häusern, deren Wohnfläche größer als die Wohnfläche des Hauses mit der ID=3 ist.
# Subquery
SELECT Wohnflaeche
FROM haeuser
WHERE Haus_ID = 3;

# b)
SELECT Standort
FROM haeuser
WHERE Wohnflaeche >
(
  SELECT Wohnflaeche
  FROM haeuser
  WHERE Haus_ID = 3
);
  
# c) Gesucht werden alle Geschäfte, die sich in Häusern des Hausbesitzers mit ID=3 befinden.
# Subquery
SELECT Haus_ID
FROM haeuser
WHERE Hausbesitzer_ID = 3;

# c)
SELECT Geschaeft_ID
FROM geschaefte
WHERE Haus_ID IN
(
  SELECT Haus_ID
  FROM haeuser
  WHERE Hausbesitzer_ID = 3;
)

# d) Gesucht werden alle Häuser, deren Eigentümer (mindestens auch) ein Haus an ihrem eigenen Wohnort besitzen.
# Subquery
SELECT hausbesitzer.Hausbesitzer_ID
FROM hausbesitzer, haeuser
WHERE hausbesitzer.Hausbesitzer_ID = haeuser.Hausbesitzer_ID
AND Wohnort = Standort;

# d)
SELECT Haus_ID
FROM haeuser
WHERE Hausbesitzer_ID IN
(
  SELECT hausbesitzer.Hausbesitzer_ID
  FROM hausbesitzer, haeuser
  WHERE hausbesitzer.Hausbesitzer_ID = haeuser.Hausbesitzer_ID
  AND Wohnort = Standort;
);

# e) Gesucht werden alle Mieter des Hauses (oder der Häuser) mit maximaler Wohnfläche.
# Subquery
SELECT MAX(Wohnflaeche)
FROM haeuser;

# e)
SELECT Mieter_ID, Nachname
FROM mieter, haeuser
WHERE haeuser.Haus_ID = mieter.Haus_ID
AND Wohnflaeche =
(
  SELECT MAX(Wohnflaeche)
  FROM haeuser
);

# f) Gesucht werden alle Mieter von Häusern mit (mindestens) einem Ladenlokal.
# Subquery
SELECT Haus_ID
FROM geschaefte;

# f)
SELECT Mieter_ID, Nachname
FROM mieter
WHERE Haus_ID IN
(
  SELECT Haus_ID
  FROM geschaefte
);
