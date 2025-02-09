CREATE TABLE Cliente 
( 
 ClienteID INT NOT NULL,  
 Nome VARCHAR(n) NOT NULL,  
 Email VARCHAR(n) NOT NULL,  
 Telefone VARCHAR(n) NOT NULL,  
 DataNascimento DATE,  
 UNIQUE (Email)
); 

CREATE TABLE Viagem 
( 
 ViagemID INT AUTO_INCREMENT,  
 Destino VARCHAR(n) NOT NULL,  
 Descricao CHAR(n) NOT NULL,  
 DataPartida DATE AUTO_INCREMENT,  
 DataRetorno DATE AUTO_INCREMENT,  
); 

CREATE TABLE Reserva 
( 
 ReservaID INT AUTO_INCREMENT,  
 ClienteID INT,  
 ViagemID INT,  
 DataReserva DATE NOT NULL,  
); 

CREATE TABLE Voo 
( 
 VooID INT AUTO_INCREMENT,  
 ViagemID INT,  
 Origem VARCHAR(n) NOT NULL,  
 Destino VARCHAR(n) NOT NULL,  
 DataHoraPartida DATE,  
 DataHoraChegada DATE,  
); 

CREATE TABLE Pagamento 
( 
 PagamentoID INT AUTO_INCREMENT,  
 ReservaID INT,  
 Valor FLOAT NOT NULL,  
 DataPagamento DATE AUTO_INCREMENT,  
); 

ALTER TABLE Cliente ADD FOREIGN KEY(ClienteID) REFERENCES undefined (ClienteID)
ALTER TABLE Reserva ADD FOREIGN KEY(ClienteID) REFERENCES Cliente (ClienteID)
ALTER TABLE Reserva ADD FOREIGN KEY(ViagemID) REFERENCES Viagem (ViagemID)
ALTER TABLE Voo ADD FOREIGN KEY(ViagemID) REFERENCES Viagem (ViagemID)
ALTER TABLE Pagamento ADD FOREIGN KEY(ReservaID) REFERENCES Reserva (ReservaID)
