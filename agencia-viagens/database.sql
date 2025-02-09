CREATE TABLE Cliente (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  telefone VARCHAR(15)
);

CREATE TABLE Destino (
  id_destino INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  descricao TEXT,
  preco DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Reserva (
  id_reserva INT AUTO_INCREMENT PRIMARY KEY,
  data_viagem DATE NOT NULL,
  qtd_pessoas INT NOT NULL,
  id_cliente INT NOT NULL,
  id_destino INT NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
  FOREIGN KEY (id_destino) REFERENCES Destino(id_destino)
);
