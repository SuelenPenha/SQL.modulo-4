CREATE DATABASE resilia;

USE resilia;




-- Criando tabela de cursos
CREATE TABLE cursos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  carga_horaria INT NOT NULL
);


-- Criando tabela de turmas
CREATE TABLE turmas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  id_curso INT NOT NULL,
  FOREIGN KEY (id_curso) REFERENCES cursos(id)
);


-- Criando tabela de alunos
CREATE TABLE alunos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  id_turma INT NOT NULL,
  FOREIGN KEY (id_turma) REFERENCES turmas(id)
);


-- Adicionando dados de exemplo à tabela de cursos
INSERT INTO cursos (nome, carga_horaria) 
VALUES 
    -> ("jogos digitais", 120),
    -> ("sistema de informacao", 120),
    -> ("sistema para internet", 120);

-- Adicionando dados de exemplo à tabela de turmas
INSERT INTO turmas (nome, id_curso) 
VALUES 
    -> ("turma 01", 1),
    -> ("turma 02", 1),
    -> ("turma 03", 2),
    -> ("turma 04", 3);

-- Adicionando dados de exemplo à tabela de alunos
INSERT INTO alunos (nome, email, id_turma) 
VALUES 
    -> ("thais moreira", "thaimoreira1@email.com", 5),
    -> ("luciano silva", "lucianosilva2@email.com", 6),
    -> ("adriele santos", "adrielesantos3@email.com", 6),
    -> ("camila monteiro", "camilamonteiro4@email.com", 7),
    -> ("karen coelho", "karencoelho5@email.com", 8);