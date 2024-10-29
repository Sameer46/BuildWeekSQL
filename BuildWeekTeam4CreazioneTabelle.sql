-- CREAZIONE DEL DB
CREATE DATABASE BuildWeekTeam4;
-- USO DB
USE BuildWeekTeam4;

CREATE TABLE Regione (
    IDRegione INT AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    CONSTRAINT PK_REGIONE PRIMARY KEY (IDRegione)
);

CREATE TABLE Provincia (
    IDProvincia INT AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    IDRegione INT,
    CONSTRAINT PK_PROVINCIA PRIMARY KEY (IDProvincia),
    CONSTRAINT FK_PROVINCIA_REGIONE FOREIGN KEY (IDRegione)
    REFERENCES Regione (IDRegione)
);


CREATE TABLE Comune (
    IDComune INT AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    CAP VARCHAR(50) NOT NULL,
    IDProvincia INT,
    CONSTRAINT PK_COMUNE PRIMARY KEY (IDComune),
    CONSTRAINT FK_COMUNE_PROVINCIA FOREIGN KEY (IDProvincia)
    REFERENCES Provincia (IDProvincia)
);


CREATE TABLE AnagraficaClienti (
    IDCliente INT AUTO_INCREMENT,
    Nome VARCHAR(150),
    Cognome VARCHAR(150),
    Indirizzo VARCHAR(250),
    Telefono VARCHAR(150),
    IDComune INT,
    CONSTRAINT PK_ANAGRAFICACLIENTI PRIMARY KEY (IDCliente),
    CONSTRAINT FK_ANAGRAFICACLIENTI_COMUNE FOREIGN KEY (IDComune)
    REFERENCES Comune (IDComune)
);


CREATE TABLE Responsabile (
    IDResponsabile INT AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Indirizzo VARCHAR(150),
    Telefono VARCHAR(150),
    Email VARCHAR(50),
    CONSTRAINT PK_RESPONSABILE PRIMARY KEY (IDResponsabile)
);


CREATE TABLE Concessionaria (
    IDConcessionaria INT AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Indirizzo VARCHAR(150),
    Telefono VARCHAR(150),
    Email VARCHAR(50),
    IDComune INT,
    IDResponsabile INT,
    CONSTRAINT PK_CONCESSIONARIA PRIMARY KEY (IDConcessionaria),
    CONSTRAINT FK_CONCESSIONARIA_COMUNE FOREIGN KEY (IDComune)
    REFERENCES Comune (IDComune),
    CONSTRAINT FK_CONCESSIONARIA_RESPONSABILE FOREIGN KEY (IDResponsabile)
    REFERENCES Responsabile (IDResponsabile)
);


CREATE TABLE Modello (
    IDModello INT AUTO_INCREMENT,
    Marca VARCHAR(50) NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Cinlindrata VARCHAR(20) NOT NULL,
    CONSTRAINT PK_MODELLO PRIMARY KEY (IDModello)
);

CREATE TABLE Colore (
    IDColore INT AUTO_INCREMENT,
    Nome VARCHAR(30) NOT NULL,
    CONSTRAINT PK_COLORE PRIMARY KEY (IDColore)
);


CREATE TABLE Auto (
    IDAuto INT AUTO_INCREMENT,
    Targa VARCHAR(10),
    NumeroSerie VARCHAR(50) NOT NULL,
    PrezzoListino DECIMAL(10 , 2 ),
    AnnoImmatricolazione DATETIME NOT NULL,
    Cambio VARCHAR(10),
    Alimentazioni VARCHAR(50),
    IDModello INT,
    IDColore INT,
    IDConcessionaria INT,
    CONSTRAINT PK_AUTO PRIMARY KEY (IDAuto),
    CONSTRAINT FK_AUTO_MODELLO FOREIGN KEY (IDModello)
    REFERENCES Modello (IDModello),
    CONSTRAINT FK_AUTO_COLORE FOREIGN KEY (IDColore)
    REFERENCES Colore (IDColore),
    CONSTRAINT FK_AUTO_CONCESSIONARIA FOREIGN KEY (IDConcessionaria)
    REFERENCES Concessionaria (IDConcessionaria)
);

CREATE TABLE Vendita (
    IDVendita INT AUTO_INCREMENT,
    IDAuto INT,
    PrezzoVendita DECIMAL(10 , 2 ),
    DataAcquisto DATE,
    DataVendita DATE,
    IDCliente INT,
    IDConcessionaria INT,
    CONSTRAINT PK_VENDITA PRIMARY KEY (IDVendita),
    CONSTRAINT FK_VENDITA_AUTO FOREIGN KEY (IDAuto)
	REFERENCES Auto (IDAuto),
    CONSTRAINT FK_VENDITA_CLIENTE FOREIGN KEY (IDCliente)
	REFERENCES AnagraficaClienti(IDCliente)
);