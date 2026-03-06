SELECT * FROM demo;-- Criação da tabela LIVROS
CREATE TABLE LIVROS (
    ID_LIVRO   INT PRIMARY KEY,       -- Identificador único do livro
    NOME_LIVRO VARCHAR(100) NOT NULL, -- Nome do livro
    AUTORIA    VARCHAR(100) NOT NULL, -- Autor(a) do livro
    EDITORA    VARCHAR(100) NOT NULL, -- Editora responsável
    CATEGORIA  VARCHAR(50) NOT NULL,  -- Categoria do livro
    PREÇO      DECIMAL(10,2) NOT NULL -- Preço do livro
);

-- Inserção dos registros na tabela LIVROS
INSERT INTO LIVROS 
(CATEGORIA, AUTORIA, NOME_LIVRO, EDITORA, ID_LIVRO, PREÇO)
VALUES
('Biografia', 'Malala Yousafzai', 'Eu sou Malala',        'Companhia das Letras', 11, 22.32),
('Biografia', 'Michelle Obama',   'Minha história',       'Objetiva',              12, 57.90),
('Biografia', 'Anne Frank',       'Diário de Anne Frank', 'Pe Da Letra',           13, 34.90);

-- Exibir todos os registros da tabela LIVROS
SELECT * FROM LIVROS;
