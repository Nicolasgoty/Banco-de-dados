--- 1. Criando a Tabela de Clientes
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    nomeCliente VARCHAR(100) NOT NULL,
    emailCliente VARCHAR(100) UNIQUE
);

--- 2. Criando a Tabela de Compras
CREATE TABLE Compras (
    CompraID INT PRIMARY KEY,
    ClienteID INT,
    NomeLivro VARCHAR(255) NOT NULL,
    CONSTRAINT fk_cliente 
        FOREIGN KEY (ClienteID) 
        REFERENCES Clientes(ID)
);

--- 3. Inserindo dados para teste
INSERT INTO Clientes (ID, nomeCliente, emailCliente) VALUES 
(1, 'Ana Silva', 'ana@email.com'),
(2, 'Bruno Souza', 'bruno@email.com');

INSERT INTO Compras (CompraID, ClienteID, NomeLivro) VALUES 
(101, 1, 'Dom Casmurro'),
(102, 1, 'O Alquimista'),
(103, 2, '1984');

--- 4. Visualizando os dados cruzados (Join)
SELECT 
    Clientes.nomeCliente, 
    Compras.NomeLivro
FROM Clientes
JOIN Compras ON Clientes.ID = Compras.ClienteID;
