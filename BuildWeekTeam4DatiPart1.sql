INSERT INTO Regione (Nome) VALUES
('Lombardia'), ('Piemonte'), ('Veneto'), ('Emilia-Romagna'), ('Toscana'),
('Liguria'), ('Lazio'), ('Abruzzo'), ('Campania'), ('Calabria'),
('Sicilia'), ('Sardegna'), ('Puglia'), ('Marche'), ('Umbria'),
('Molise'), ('Friuli-Venezia Giulia'), ('Trentino-Alto Adige'), ('Basilicata'), ('Valle d\'Aosta');


INSERT INTO Provincia (Nome, IDRegione) VALUES
('Milano', 1), ('Bergamo', 1), ('Torino', 2), ('Cuneo', 2), ('Verona', 3),
('Venezia', 3), ('Bologna', 4), ('Modena', 4), ('Firenze', 5), ('Livorno', 5),
('Genova', 6), ('La Spezia', 6), ('Roma', 7), ('Viterbo', 7), ('Napoli', 9),
('Salerno', 9), ('Palermo', 11), ('Catania', 11), ('Cagliari', 12), ('Nuoro', 12);


INSERT INTO Comune (Nome, CAP, IDProvincia) VALUES
('Milano', '20100', 1), ('Bergamo', '24100', 2), ('Torino', '10100', 3), ('Cuneo', '12100', 4), ('Verona', '37100', 5),
('Venezia', '30100', 6), ('Bologna', '40100', 7), ('Modena', '41100', 8), ('Firenze', '50100', 9), ('Livorno', '57100', 10),
('Genova', '16100', 11), ('La Spezia', '19100', 12), ('Roma', '00100', 13), ('Viterbo', '01100', 14), ('Napoli', '80100', 15),
('Salerno', '84100', 16), ('Palermo', '90100', 17), ('Catania', '95100', 18), ('Cagliari', '09100', 19), ('Nuoro', '08100', 20);

INSERT INTO AnagraficaClienti (Nome, Cognome, Indirizzo, Telefono, IDComune) VALUES
('Mario', 'Rossi', 'Via Milano 1', '3401234567', 1), ('Luca', 'Verdi', 'Via Bergamo 5', '3402234567', 2),
('Anna', 'Bianchi', 'Corso Torino 12', '3403234567', 3), ('Giulia', 'Neri', 'Via Cuneo 8', '3404234567', 4),
('Davide', 'Mancino', 'Piazza Verona 3', '3405234567', 5), ('Paola', 'Blu', 'Via Venezia 6', '3406234567', 6),
('Giovanni', 'Viola', 'Corso Bologna 9', '3407234567', 7), ('Francesca', 'Grigi', 'Via Modena 11', '3408234567', 8),
('Alessandro', 'Marrone', 'Via Firenze 15', '3409234567', 9), ('Sofia', 'Celeste', 'Via Livorno 20', '3410234567', 10),
('Simone', 'Arancione', 'Via Genova 7', '3411234567', 11), ('Serena', 'Rosa', 'Via La Spezia 14', '3412234567', 12),
('Leonardo', 'Bronzo', 'Via Roma 18', '3413234567', 13), ('Ilaria', 'Argento', 'Via Viterbo 25', '3414234567', 14),
('Davide', 'Oro', 'Via Napoli 30', '3415234567', 15), ('Chiara', 'Ambra', 'Via Salerno 2', '3416234567', 16),
('Mattia', 'Rubino', 'Via Palermo 5', '3417234567', 17), ('Martina', 'Cristallo', 'Via Catania 8', '3418234567', 18),
('Riccardo', 'Perla', 'Via Cagliari 12', '3419234567', 19), ('Eleonora', 'Opale', 'Via Nuoro 17', '3420234567', 20);

INSERT INTO Responsabile (Nome, Indirizzo, Telefono, Email) VALUES
('Franco Lenti', 'Via Torino 23', '3420345678', 'franco@concessionaria.com'),
('Lucia De Rosa', 'Via Milano 45', '3421345678', 'lucia@concessionaria.com'),
('Carlo Neri', 'Via Genova 56', '3422345678', 'carlo@concessionaria.com'),
('Sara Gialli', 'Via Bologna 67', '3423345678', 'sara@concessionaria.com'),
('Gianni Rossi', 'Via Verona 78', '3424345678', 'gianni@concessionaria.com'),
('Elena Verdi', 'Via Venezia 89', '3425345678', 'elena@concessionaria.com'),
('Giorgio Blu', 'Via Roma 90', '3426345678', 'giorgio@concessionaria.com'),
('Chiara Bianchi', 'Via Firenze 91', '3427345678', 'chiara@concessionaria.com'),
('Davide Nero', 'Via Palermo 92', '3428345678', 'davide@concessionaria.com'),
('Luciana Rosa', 'Via Catania 93', '3429345678', 'luciana@concessionaria.com'),
('Andrea Gialli', 'Via Napoli 94', '3430345678', 'andrea@concessionaria.com'),
('Monica Celeste', 'Via Modena 95', '3431345678', 'monica@concessionaria.com'),
('Claudio Arancione', 'Via Salerno 96', '3432345678', 'claudio@concessionaria.com'),
('Anna Viola', 'Via Cagliari 97', '3433345678', 'anna@concessionaria.com'),
('Enrico Grigi', 'Via Bergamo 98', '3434345678', 'enrico@concessionaria.com'),
('Sara Blu', 'Via La Spezia 99', '3435345678', 'sara2@concessionaria.com'),
('Mario Celeste', 'Via Milano 100', '3436345678', 'mario2@concessionaria.com'),
('Paolo Bianco', 'Via Roma 101', '3437345678', 'paolo@concessionaria.com'),
('Giorgia Nero', 'Via Torino 102', '3438345678', 'giorgia@concessionaria.com'),
('Alessio Argento', 'Via Venezia 103', '3439345678', 'alessio@concessionaria.com');

INSERT INTO Concessionaria (Nome, Indirizzo, Telefono, Email, IDComune, IDResponsabile) VALUES
('Auto Milano', 'Via Milano 1', '3441234567', 'info@automilano.com', 1, 1),
('Auto Bergamo', 'Via Bergamo 2', '3442234567', 'info@autobergamo.com', 2, 2),
('Auto Torino', 'Corso Torino 3', '3443234567', 'info@autotorino.com', 3, 3),
('Auto Cuneo', 'Via Cuneo 4', '3444234567', 'info@autocuneo.com', 4, 4),
('Auto Verona', 'Piazza Verona 5', '3445234567', 'info@autoverona.com', 5, 5),
('Auto Venezia', 'Via Venezia 6', '3446234567', 'info@autovenezia.com', 6, 6),
('Auto Bologna', 'Corso Bologna 7', '3447234567', 'info@autobologna.com', 7, 7),
('Auto Modena', 'Via Modena 8', '3448234567', 'info@automodena.com', 8, 8),
('Auto Firenze', 'Via Firenze 9', '3449234567', 'info@autofirenze.com', 9, 9),
('Auto Livorno', 'Via Livorno 10', '3450234567', 'info@autolivorno.com', 10, 10),
('Auto Genova', 'Via Genova 11', '3451234567', 'info@autogenova.com', 11, 11),
('Auto La Spezia', 'Via La Spezia 12', '3452234567', 'info@autolaspezia.com', 12, 12),
('Auto Roma', 'Via Roma 13', '3453234567', 'info@autoroma.com', 13, 13),
('Auto Viterbo', 'Via Viterbo 14', '3454234567', 'info@autoviterbo.com', 14, 14),
('Auto Napoli', 'Via Napoli 15', '3455234567', 'info@autonapoli.com', 15, 15),
('Auto Salerno', 'Via Salerno 16', '3456234567', 'info@autosalerno.com', 16, 16),
('Auto Palermo', 'Via Palermo 17', '3457234567', 'info@autopalermo.com', 17, 17),
('Auto Catania', 'Via Catania 18', '3458234567', 'info@autocatania.com', 18, 18),
('Auto Cagliari', 'Via Cagliari 19', '3459234567', 'info@autocagliari.com', 19, 19),
('Auto Nuoro', 'Via Nuoro 20', '3460234567', 'info@autonuoro.com', 20, 20);

INSERT INTO Modello (Marca, Nome, Cinlindrata) VALUES
('Fiat', 'Punto', '1400'), ('Fiat', '500', '1200'), ('Ford', 'Focus', '1600'), ('Ford', 'Fiesta', '1400'), 
('Volkswagen', 'Golf', '2000'), ('Volkswagen', 'Polo', '1600'), ('BMW', 'Serie 3', '2000'), ('BMW', 'Serie 1', '1800'),
('Audi', 'A3', '1600'), ('Audi', 'A4', '2000'), ('Mercedes', 'Classe A', '1600'), ('Mercedes', 'Classe C', '2200'),
('Toyota', 'Yaris', '1300'), ('Toyota', 'Corolla', '1800'), ('Honda', 'Civic', '2000'), ('Honda', 'Jazz', '1500'),
('Renault', 'Clio', '1400'), ('Renault', 'Megane', '1600'), ('Peugeot', '208', '1400'), ('Peugeot', '308', '1600');

INSERT INTO Colore (Nome) VALUES
('Rosso'), ('Blu'), ('Nero'), ('Bianco'), ('Grigio'), 
('Argento'), ('Verde'), ('Giallo'), ('Marrone'), ('Viola'), 
('Arancione'), ('Beige'), ('Azzurro'), ('Bordeaux'), ('Oro'),
('Rosa'), ('Verde Scuro'), ('Antracite'), ('Blu Scuro'), ('Nero Opaco');

INSERT INTO Auto (Targa, NumeroSerie, PrezzoListino, AnnoImmatricolazione, Cambio, Alimentazioni, IDModello, IDColore, IDConcessionaria) VALUES
('AA123BB', 'ABCDEF1234567890', 15000.00, '2020-01-15', 'Manuale', 'Benzina', 1, 1, 1),
('BB234CC', 'ABCDEF1234567891', 17000.00, '2021-03-20', 'Automatico', 'Diesel', 2, 2, 2),
('CC345DD', 'ABCDEF1234567892', 22000.00, '2019-07-30', 'Manuale', 'Benzina', 3, 3, 3),
('DD456EE', 'ABCDEF1234567893', 25000.00, '2018-11-15', 'Automatico', 'GPL', 4, 4, 4),
('EE567FF', 'ABCDEF1234567894', 30000.00, '2021-05-10', 'Manuale', 'Benzina', 5, 5, 5),
('FF678GG', 'ABCDEF1234567895', 16000.00, '2020-09-25', 'Automatico', 'Elettrico', 6, 6, 6),
('GG789HH', 'ABCDEF1234567896', 27000.00, '2019-12-10', 'Manuale', 'Diesel', 7, 7, 7),
('HH890II', 'ABCDEF1234567897', 18000.00, '2018-06-15', 'Automatico', 'GPL', 8, 8, 8),
('II901JJ', 'ABCDEF1234567898', 21000.00, '2020-04-20', 'Manuale', 'Ibrido', 9, 9, 9),
('JJ012KK', 'ABCDEF1234567899', 28000.00, '2017-08-25', 'Automatico', 'Diesel', 10, 10, 10),
('KK123LL', 'ABCDEF1234567800', 26000.00, '2019-11-12', 'Manuale', 'Benzina', 11, 11, 11),
('LL234MM', 'ABCDEF1234567801', 23000.00, '2021-02-14', 'Automatico', 'Ibrido', 12, 12, 12),
('MM345NN', 'ABCDEF1234567802', 19000.00, '2020-10-18', 'Manuale', 'GPL', 13, 13, 13),
('NN456OO', 'ABCDEF1234567803', 24000.00, '2019-05-22', 'Automatico', 'Benzina', 14, 14, 14),
('OO567PP', 'ABCDEF1234567804', 25000.00, '2018-07-20', 'Manuale', 'Diesel', 15, 15, 15),
('PP678QQ', 'ABCDEF1234567805', 15000.00, '2021-01-25', 'Automatico', 'Elettrico', 16, 16, 16),
('QQ789RR', 'ABCDEF1234567806', 28000.00, '2020-03-17', 'Manuale', 'GPL', 17, 17, 17),
('RR890SS', 'ABCDEF1234567807', 22000.00, '2018-12-30', 'Automatico', 'Benzina', 18, 18, 18),
('SS901TT', 'ABCDEF1234567808', 19000.00, '2019-09-25', 'Manuale', 'Diesel', 19, 19, 19),
('TT012UU', 'ABCDEF1234567809', 31000.00, '2021-06-10', 'Automatico', 'Ibrido', 20, 20, 20);


INSERT INTO Vendita (IDAuto, PrezzoVendita, DataAcquisto, DataVendita, IDCliente, IDConcessionaria) VALUES
(1, 14800.00, '2021-05-15', '2021-06-01', 1, 1),
(2, 16500.00, '2022-01-15', NULL, 2, 1),
(3, 22000.00, '2020-11-10', '2020-11-25', 3, 2),
(4, 24500.00, '2021-07-15', NULL, 4, 2),
(5, 29000.00, '2021-07-12', '2021-07-20', 5, 3),
(6, 16000.00, '2022-02-10', NULL, 6, 3),
(7, 26500.00, '2020-06-18', '2020-06-25', 7, 4),
(8, 17500.00, '2021-12-20', NULL, 8, 4),
(9, 21000.00, '2021-04-28', '2021-05-05', 9, 5),
(10, 27000.00, '2022-03-14', NULL, 10, 5),
(11, 25000.00, '2020-09-15', '2020-09-25', 11, 6),
(12, 22500.00, '2022-04-10', NULL, 12, 6),
(13, 18000.00, '2021-02-25', '2021-03-01', 13, 7),
(14, 23000.00, '2021-09-05', NULL, 14, 7),
(15, 24000.00, '2020-05-30', '2020-06-10', 15, 8),
(16, 14500.00, '2021-08-18', NULL, 16, 8),
(17, 27500.00, '2020-07-20', '2020-07-30', 17, 9),
(18, 21800.00, '2021-05-15', NULL, 18, 9),
(19, 18500.00, '2021-01-10', '2021-01-20', 19, 10),
(20, 30500.00, '2022-06-10', NULL, 20, 10);
