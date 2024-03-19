#########################################
#  BESCHREIBUNG des Datenbank-Schemas   #
#########################################

/*
Es gibt drei Tabellen:
- Mitarbeiter (Chef, Herr Klein, Bürokraft)
- Fahrzeug (Porsche, LKW, Kleinwagen, Schrott-Karre)
- Parkplatz (Chef-Parkplatz, LKW-Parkplatz und Gäste-Parkplatz)

Folgendes gilt:
- Der Chef fährt Porsche
- Herr Klein fährt den Kleintransporter 
- Der Bürokraft wird kein Fahrzeug zugeordnet
- Dem LKW und der Schrott-Karre werden kein Mitarbeiter zugeordnet
  (Für den LKW werden externe Fahrer genutzt, die Schrott-Karre ist nicht mehr fahrtüchtig)
- Für Porsche und LKW gibt es Parkplätze, für Kleinwagen und Schrott-Karre nicht
- Dem Gäste-Parkplatz kann kein Fahrzeug zugeordnet werden
*/

#########################################
# IMPLEMENTIERUNG des Datenbank-Schemas #
#########################################

CREATE DATABASE A_03_02_01;
USE A_03_02_01;

CREATE TABLE Parkplatz
(
    parkplatz_id INT(3),
    parkplatz_bezeichnung VARCHAR(30),
    PRIMARY KEY(parkplatz_id)
);
INSERT INTO Parkplatz VALUES
(1,"Chef-Parkplatz"),
(2,"LKW-Parkplatz"),
(3,"Gäste-Parkplatz");

CREATE TABLE Fahrzeug
(
    fahrzeug_id INT(3),
    parkplatz_id INT(3),
    fahrzeug_bezeichnung VARCHAR(30),
    PRIMARY KEY(fahrzeug_id),
    FOREIGN KEY(parkplatz_id) REFERENCES Parkplatz(parkplatz_id)
);
INSERT INTO Fahrzeug VALUES
(1,1,"Porsche"),
(2,2,"LKW"),
(3,NULL,"Kleintransporter"),
(4,NULL,"Schrott-Karre");

CREATE TABLE Mitarbeiter
(
    mitarbeiter_id INT(3),
    fahrzeug_id INT(3),
    mitarbeiter_bezeichnung VARCHAR(30),
    PRIMARY KEY(mitarbeiter_id),
    FOREIGN KEY(fahrzeug_id) REFERENCES Fahrzeug(fahrzeug_id)
);
INSERT INTO Mitarbeiter VALUES
(1,1,"Chef"),
(2,3,"Herr Klein"),
(3,NULL,"Bürokraft");

/* -----FULL JOIN----- */

########################################################################
#  Folgende Ausgabe würde sich beim doppelten FULL JOIN also ergeben:  #       
########################################################################
/*
SELECT 
    mitarbeiter.mitarbeiter_bezeichnung,
    fahrzeug.fahrzeug_bezeichnung,
    parkplatz.parkplatz_bezeichnung
FROM 
	mitarbeiter FULL JOIN fahrzeug ON mitarbeiter.fahrzeug_id=fahrzeug.fahrzeug_id
	FULL JOIN parkplatz ON fahrzeug.parkplatz_id=parkplatz.parkplatz_id;
*/
##########################################################################
# mitarbeiter_bezeichnung # fahrzeug_bezeichnung # parkplatz_bezeichnung #
##########################################################################
#       Chef              #      Porsche         #     Chef-Parkplatz    #
##########################################################################
#      Herr Klein         #     Kleinwagen       #        NULL           #
##########################################################################
#       Bürokraft 	  #       NULL           #        NULL           #
##########################################################################
#        NULL             #       LKW            #    LKW-Parkplatz      #
##########################################################################
#        NULL             #    Schrott-Karre     #        NULL           #
##########################################################################
#        NULL             #       NULL           #    Gäste-Parkplatz    #
##########################################################################    

/*-----*/
	
###################################################################
#  Folgende Ausgabe würde sich beim doppelten INNER JOIN ergeben: #       
###################################################################
/*
SELECT 
    mitarbeiter.mitarbeiter_bezeichnung,
    fahrzeug.fahrzeug_bezeichnung,
    parkplatz.parkplatz_bezeichnung
FROM 
	mitarbeiter INNER JOIN fahrzeug ON mitarbeiter.fahrzeug_id=fahrzeug.fahrzeug_id
	INNER JOIN parkplatz ON fahrzeug.parkplatz_id=parkplatz.parkplatz_id;
*/
##################################################
# mitarbeiter_bezeichnung # fahrzeug_bezeichnung #	
##################################################
#       Chef              #      Porsche         #
##################################################
#      Herr Klein         #     Kleinwagen       #
##################################################
	
##########################################################################
# mitarbeiter_bezeichnung # fahrzeug_bezeichnung # parkplatz_bezeichnung #
##########################################################################
#       Chef              #      Porsche         #     Chef-Parkplatz    #
##########################################################################

/* -----1 INNER JOIN----- */
	
####################################################################
#  Folgende Ausgabe würde sich bei INNER JOIN > LEFT JOIN ergeben: #       
####################################################################
/*
SELECT 
    mitarbeiter.mitarbeiter_bezeichnung,
    fahrzeug.fahrzeug_bezeichnung,
    parkplatz.parkplatz_bezeichnung
FROM 
	mitarbeiter INNER JOIN fahrzeug ON mitarbeiter.fahrzeug_id=fahrzeug.fahrzeug_id
	LEFT JOIN parkplatz ON fahrzeug.parkplatz_id=parkplatz.parkplatz_id;
*/
##################################################
# mitarbeiter_bezeichnung # fahrzeug_bezeichnung #	
##################################################
#       Chef              #      Porsche         #
##################################################
#      Herr Klein         #     Kleinwagen       #
##################################################

##########################################################################
# mitarbeiter_bezeichnung # fahrzeug_bezeichnung # parkplatz_bezeichnung #
##########################################################################
#       Chef              #      Porsche         #     Chef-Parkplatz    #
##########################################################################
#      Herr Klein         #     Kleinwagen       #        NULL           #
##########################################################################

/* ----- */
	
#####################################################################
#  Folgende Ausgabe würde sich bei INNER JOIN > RIGHT JOIN ergeben: #       
#####################################################################
/*
SELECT 
    mitarbeiter.mitarbeiter_bezeichnung,
    fahrzeug.fahrzeug_bezeichnung,
    parkplatz.parkplatz_bezeichnung
FROM 
	mitarbeiter INNER JOIN fahrzeug ON mitarbeiter.fahrzeug_id=fahrzeug.fahrzeug_id
	RIGHT JOIN parkplatz ON fahrzeug.parkplatz_id=parkplatz.parkplatz_id;
*/
##################################################
# mitarbeiter_bezeichnung # fahrzeug_bezeichnung #	
##################################################
#       Chef              #      Porsche         #
##################################################
#      Herr Klein         #     Kleinwagen       #
##################################################

##########################################################################
# mitarbeiter_bezeichnung # fahrzeug_bezeichnung # parkplatz_bezeichnung #
##########################################################################
#       Chef              #      Porsche         #     Chef-Parkplatz    #
##########################################################################
#        NULL             #       NULL           #    LKW-Parkplatz      #
##########################################################################
#        NULL             #       NULL           #    Gäste-Parkplatz    #
##########################################################################

/* -----1 LEFT JOIN----- */
	
#####################################################################
#  Folgende Ausgabe würde sich bei LEFT JOIN > INNER JOIN ergeben: #       
#####################################################################
/*
SELECT 
    mitarbeiter.mitarbeiter_bezeichnung,
    fahrzeug.fahrzeug_bezeichnung,
    parkplatz.parkplatz_bezeichnung
FROM 
	mitarbeiter LEFT JOIN fahrzeug ON mitarbeiter.fahrzeug_id=fahrzeug.fahrzeug_id
	INNER JOIN parkplatz ON fahrzeug.parkplatz_id=parkplatz.parkplatz_id;
*/
##################################################
# mitarbeiter_bezeichnung # fahrzeug_bezeichnung #
##################################################
#       Chef              #      Porsche         #
##################################################
#      Herr Klein         #     Kleinwagen       #
##################################################
#       Bürokraft 	  #       NULL           #
##################################################

##########################################################################
# mitarbeiter_bezeichnung # fahrzeug_bezeichnung # parkplatz_bezeichnung #
##########################################################################
#       Chef              #      Porsche         #     Chef-Parkplatz    #
##########################################################################

/* ----- */
	
#####################################################################
#  Folgende Ausgabe würde sich bei LEFT JOIN > LEFT JOIN ergeben: #       
#####################################################################
/*
SELECT 
    mitarbeiter.mitarbeiter_bezeichnung,
    fahrzeug.fahrzeug_bezeichnung,
    parkplatz.parkplatz_bezeichnung
FROM 
	mitarbeiter LEFT JOIN fahrzeug ON mitarbeiter.fahrzeug_id=fahrzeug.fahrzeug_id
	LEFT JOIN parkplatz ON fahrzeug.parkplatz_id=parkplatz.parkplatz_id;
*/
##################################################
# mitarbeiter_bezeichnung # fahrzeug_bezeichnung #
##################################################
#       Chef              #      Porsche         #
##################################################
#      Herr Klein         #     Kleinwagen       #
##################################################
#       Bürokraft 	  #       NULL           #
##################################################

##########################################################################
# mitarbeiter_bezeichnung # fahrzeug_bezeichnung # parkplatz_bezeichnung #
##########################################################################
#       Chef              #      Porsche         #     Chef-Parkplatz    #
##########################################################################
#      Herr Klein         #     Kleinwagen       #        NULL           #
##########################################################################
#       Bürokraft 	  #       NULL           #        NULL           #
##########################################################################

/* ----- */
	
#####################################################################
#  Folgende Ausgabe würde sich bei LEFT JOIN > RIGHT JOIN ergeben: #       
#####################################################################
/*
SELECT 
    mitarbeiter.mitarbeiter_bezeichnung,
    fahrzeug.fahrzeug_bezeichnung,
    parkplatz.parkplatz_bezeichnung
FROM 
	mitarbeiter LEFT JOIN fahrzeug ON mitarbeiter.fahrzeug_id=fahrzeug.fahrzeug_id
	RIGHT JOIN parkplatz ON fahrzeug.parkplatz_id=parkplatz.parkplatz_id;
*/
##################################################
# mitarbeiter_bezeichnung # fahrzeug_bezeichnung #
##################################################
#       Chef              #      Porsche         #
##################################################
#      Herr Klein         #     Kleinwagen       #
##################################################
#       Bürokraft 	  #       NULL           #
##################################################

##########################################################################
# mitarbeiter_bezeichnung # fahrzeug_bezeichnung # parkplatz_bezeichnung #
##########################################################################
#       Chef              #      Porsche         #     Chef-Parkplatz    #
##########################################################################
#        NULL             #       NULL           #    LKW-Parkplatz      #
##########################################################################
#        NULL             #       NULL           #    Gäste-Parkplatz    #
##########################################################################

/* -----1 RIGHT JOIN----- */
	
#####################################################################
#  Folgende Ausgabe würde sich bei RIGHT JOIN > INNER JOIN ergeben: #       
#####################################################################
/*
SELECT 
    mitarbeiter.mitarbeiter_bezeichnung,
    fahrzeug.fahrzeug_bezeichnung,
    parkplatz.parkplatz_bezeichnung
FROM 
	mitarbeiter RIGHT JOIN fahrzeug ON mitarbeiter.fahrzeug_id=fahrzeug.fahrzeug_id
	INNER JOIN parkplatz ON fahrzeug.parkplatz_id=parkplatz.parkplatz_id;
*/
##################################################
# mitarbeiter_bezeichnung # fahrzeug_bezeichnung #
##################################################
#       Chef              #      Porsche         #
##################################################
#      Herr Klein         #     Kleinwagen       #
##################################################
#        NULL             #       LKW            #
##################################################
#        NULL             #    Schrott-Karre     #
##################################################

##########################################################################
# mitarbeiter_bezeichnung # fahrzeug_bezeichnung # parkplatz_bezeichnung #
##########################################################################
#       Chef              #      Porsche         #     Chef-Parkplatz    #
##########################################################################
#        NULL             #       LKW            #    LKW-Parkplatz      #
##########################################################################

/* ----- */

#####################################################################
#  Folgende Ausgabe würde sich bei RIGHT JOIN > LEFT JOIN ergeben: #       
#####################################################################
/*
SELECT 
    mitarbeiter.mitarbeiter_bezeichnung,
    fahrzeug.fahrzeug_bezeichnung,
    parkplatz.parkplatz_bezeichnung
FROM 
	mitarbeiter RIGHT JOIN fahrzeug ON mitarbeiter.fahrzeug_id=fahrzeug.fahrzeug_id
	LEFT JOIN parkplatz ON fahrzeug.parkplatz_id=parkplatz.parkplatz_id;
*/
##################################################
# mitarbeiter_bezeichnung # fahrzeug_bezeichnung #
##################################################
#       Chef              #      Porsche         #
##################################################
#      Herr Klein         #     Kleinwagen       #
##################################################
#        NULL             #       LKW            #
##################################################
#        NULL             #    Schrott-Karre     #
##################################################

##########################################################################
# mitarbeiter_bezeichnung # fahrzeug_bezeichnung # parkplatz_bezeichnung #
##########################################################################
#       Chef              #      Porsche         #     Chef-Parkplatz    #
##########################################################################
#      Herr Klein         #     Kleinwagen       #        NULL           #
##########################################################################
#        NULL             #       LKW            #    LKW-Parkplatz      #
##########################################################################
#        NULL             #    Schrott-Karre     #        NULL           #
##########################################################################
  
/* ----- */

#####################################################################
#  Folgende Ausgabe würde sich bei RIGHT JOIN > RIGHT JOIN ergeben: #       
#####################################################################
/*
SELECT 
    mitarbeiter.mitarbeiter_bezeichnung,
    fahrzeug.fahrzeug_bezeichnung,
    parkplatz.parkplatz_bezeichnung
FROM 
	mitarbeiter RIGHT JOIN fahrzeug ON mitarbeiter.fahrzeug_id=fahrzeug.fahrzeug_id
	RIGHT JOIN parkplatz ON fahrzeug.parkplatz_id=parkplatz.parkplatz_id;
*/
##################################################
# mitarbeiter_bezeichnung # fahrzeug_bezeichnung #
##################################################
#       Chef              #      Porsche         #
##################################################
#      Herr Klein         #     Kleinwagen       #
##################################################
#        NULL             #       LKW            #
##################################################
#        NULL             #    Schrott-Karre     #
##################################################

##########################################################################
# mitarbeiter_bezeichnung # fahrzeug_bezeichnung # parkplatz_bezeichnung #
##########################################################################
#       Chef              #      Porsche         #     Chef-Parkplatz    #
##########################################################################
#        NULL             #       LKW            #    LKW-Parkplatz      #
##########################################################################
#        NULL             #       NULL           #    Gäste-Parkplatz    #
##########################################################################   

