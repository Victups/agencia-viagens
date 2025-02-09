CREATE DATABASE agencia;
USE agencia;


CREATE TABLE Cliente 
( 
    ClienteID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,  
    Nome VARCHAR(255) NOT NULL,  
    Email VARCHAR(255) NOT NULL UNIQUE,  
    Telefone VARCHAR(20) NOT NULL,  
    DataNascimento DATE  
);


CREATE TABLE Viagem 
( 
    ViagemID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,  
    Destino VARCHAR(255) NOT NULL,  
    Descricao CHAR(255) NOT NULL,  
    DataPartida DATE NOT NULL,  
    DataRetorno DATE NOT NULL  
);


CREATE TABLE Reserva 
( 
    ReservaID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,  
    ClienteID INT NOT NULL,  
    ViagemID INT NOT NULL,  
    DataReserva DATE NOT NULL,  
    FOREIGN KEY (ClienteID) REFERENCES Cliente (ClienteID),  
    FOREIGN KEY (ViagemID) REFERENCES Viagem (ViagemID)  
);


CREATE TABLE Voo 
( 
    VooID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,  
    ViagemID INT NOT NULL,  
    Origem VARCHAR(255) NOT NULL,  
    Destino VARCHAR(255) NOT NULL,  
    DataHoraPartida DATETIME NOT NULL,  
    DataHoraChegada DATETIME NOT NULL,  
    FOREIGN KEY (ViagemID) REFERENCES Viagem (ViagemID)  
);


CREATE TABLE Pagamento 
( 
    PagamentoID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,  
    ReservaID INT NOT NULL,  
    Valor FLOAT NOT NULL,  
    DataPagamento DATE NOT NULL,  
    FOREIGN KEY (ReservaID) REFERENCES Reserva (ReservaID)  
);
