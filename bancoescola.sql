-- Criar banco de dados
CREATE DATABASE escola;
USE escola;

-- Tabela alunos
CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    email VARCHAR(100),
    telefone VARCHAR(20)
);

-- Tabela professores
CREATE TABLE professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(20)
);

-- Tabela disciplinas
CREATE TABLE disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT
);

-- Tabela turmas
CREATE TABLE turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    ano INT,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

-- Tabela matrículas
CREATE TABLE matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_turma INT,
    data_matricula DATE,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma)
);

-- Tabela notas
CREATE TABLE notas (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_disciplina INT,
    nota DECIMAL(4,2),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina)
);

-- Inserção de dados de exemplo
INSERT INTO alunos (nome, data_nascimento, email, telefone)
VALUES ('João Silva', '2008-05-10', 'joao@email.com', '11999999999');

INSERT INTO professores (nome, email, telefone)
VALUES ('Maria Souza', 'maria@email.com', '11888888888');

INSERT INTO disciplinas (nome, carga_horaria)
VALUES ('Matemática', 80);

INSERT INTO turmas (nome, ano, id_professor)
VALUES ('8º Ano A', 2024, 1);

INSERT INTO matriculas (id_aluno, id_turma, data_matricula)
VALUES (1, 1, '2024-02-01');

INSERT INTO notas (id_aluno, id_disciplina, nota)
VALUES (1, 1, 8.5);
