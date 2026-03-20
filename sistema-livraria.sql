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

select * FROM clientes
-- 1. LIMPEZA (Opcional: remove as tabelas se já existirem para evitar erros ao reexecutar)
DROP TABLE IF EXISTS Compras;
DROP TABLE IF EXISTS Clientes;

-- 2. CRIAÇÃO DAS TABELAS
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    nomeCliente VARCHAR(100),
    emailCliente VARCHAR(100)
);

CREATE TABLE Compras (
    CompraID INT PRIMARY KEY,
    ClienteID INT,
    NomeLivro VARCHAR(255),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

-- 3. INSERÇÃO DE DADOS (Aqui é onde você adiciona as informações)
-- Inserindo Clientes
INSERT INTO Clientes (ID, nomeCliente, emailCliente) 
VALUES (1, 'Alice Monteiro', 'alice@email.com');

INSERT INTO Clientes (ID, nomeCliente, emailCliente) 
VALUES (2, 'João Pedro', 'joao@email.com');

-- Inserindo Compras relacionadas aos IDs acima
INSERT INTO Compras (CompraID, ClienteID, NomeLivro) 
VALUES (10, 1, 'O Senhor dos Anéis');

INSERT INTO Compras (CompraID, ClienteID, NomeLivro) 
VALUES (11, 1, 'Harry Potter e a Pedra Filosofal');

INSERT INTO Compras (CompraID, ClienteID, NomeLivro) 
VALUES (12, 2, 'Cem Anos de Solidão');

--- 1. CRIAÇÃO DAS TABELAS
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    nomeCliente VARCHAR(100),
    emailCliente VARCHAR(100)
);

CREATE TABLE Compras (
    CompraID INT PRIMARY KEY,
    ClienteID INT,
    NomeLivro VARCHAR(255),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

--- 2. INSERÇÃO DE DADOS PARA TESTE
INSERT INTO Clientes (ID, nomeCliente, emailCliente) VALUES 
(1, 'Carlos Andrade', 'carlos@email.com'),
(2, 'Marina Silva', 'marina@email.com'),
(3, 'Roberto Freire', 'roberto@email.com');

INSERT INTO Compras (CompraID, ClienteID, NomeLivro) VALUES 
(101, 1, 'Dom Casmurro'),
(102, 1, 'A Hora da Estrela'),
(103, 2, 'O Pequeno Príncipe'),
(104, 3, '1984');

--- 3. CONSULTA COM INNER JOIN
-- Retorna o nome do cliente e o nome do livro para todas as compras
SELECT 
    Clientes.nomeCliente, 
    Compras.NomeLivro
FROM Clientes
INNER JOIN Compras ON Clientes.ID = Compras.ClienteID;
-- 4. CONSULTA PARA VERIFICAR OS DADOS
-- Este comando junta as duas tabelas para mostrar o nome do cliente e o livro que ele comprou
SELECT 
    Clientes.nomeCliente, 
    Compras.NomeLivro
FROM Clientes
INNER JOIN Compras ON Clientes.ID = Compras.ClienteID;
