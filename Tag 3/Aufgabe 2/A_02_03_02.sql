INSERT INTO Kunde(Vorname, Nachname, Email)
VALUES
("Elli", "Rot" , "rot@xyz.de"),
("Vera", "Deise" , "deise@xyz.de"),
("Witali", "Mymow" , "myr@xyz.de"),
("Rita", "Mymow" , "myr@xyz.de"),
("Eva", "Hahn" , "ehahn@xyz.de"),
("Gala", "Nieda" , "gala@xyz.de"),
("Peter", "Kaufnix" , "nix@xyz.de");

INSERT INTO Abrechnung(Kunde_ID, Datum)
VALUES
(1, "2021-05-05"),
(3, "2021-10-07"),
(2, "2021-10-11"),
(3, "2021-10-16"),
(5, "2021-10-25"),
(4, "2021-11-03"),
(3, "2021-11-05"),
(2, "2021-11-09"),
(1, "2021-11-17"),
(7, "2022-02-14");

INSERT INTO Spedition(Spedition_Name)
VALUES
("Speedvan GmbH"),
("RocketLogistik AG"),
("Turbo Transport"),
("Parktnur"),
("Kriegtnix"),
("Ganzal Lein");

INSERT INTO Hersteller(Spedition_ID, Hersteller_Name)
VALUES
(2, "Contrabit"),
(1, "AntiByte"),
(3, "UltraBug"),
(5, "Hatnix 1992"),
(4, "Ladenhut AG");

INSERT INTO Produkt(Hersteller_ID, Produkt_Name, Euro_Preis)
VALUES
(2, "tool 2.0", 15.98),
(2, "tool 3.1", 22.75),
(1, "solver 1000", 31.69),
(1, "solver premium", 45.05),
(3, "Do IT edition 1", 98),
(5, "TroppoCaro", 1000);

INSERT INTO Abrechnung_Produkt(Abrechnung_ID, Produkt_ID)
VALUES
(1, 4),
(1, 5),
(2, 3),
(2, 5),
(3, 1),
(3, 1),
(3, 1),
(3, 5),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(6, 3),
(6, 2),
(6, 5),
(7, 2),
(8, 3),
(9, 1);


