#a)	
DELETE FROM Grundstuecke
WHERE Breite < 15 OR Laenge < 15;

#b)
DELETE FROM Grundstuecke
WHERE Ort = “Hamburg“ OR Ort = “Kassel“ OR Ort = “Bielefeld“;

#c)
DELETE FROM Grundstuecke
WHERE Besitzer = “Mustermann“ AND Ort = “Bochum“;

#d)
DELETE FROM Grundstuecke
WHERE (ID = 3 OR ID = 7 OR ID = 9) AND Preis > 1000000;

#e)	
DELETE FROM Grundstuecke
WHERE Breite <= 200 AND Laenge <= 200;

#f)	
DELETE FROM Grundstuecke
WHERE Ort = “Essen“ AND ID >= 100;

#g)	
DELETE FROM Grundstuecke
WHERE Besitzer = “Müller“ AND NOT (Preis > 1000 AND Preis < 2000);


#h)
DELETE FROM Grundstuecke
WHERE NOT (Ort = “Bochum“ OR Ort = “Berlin“) AND Preis > 5000);

#i)
DELETE FROM Grundstuecke
WHERE ID > Breite AND Preis > 100 AND Preis > Laenge AND NOT (Besitzer = “Mustermann“ OR Ort = “Kiel“);
