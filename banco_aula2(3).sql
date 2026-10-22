CREATE DATABASE cinema;
USE cinema;
-- Ordem das criações das tabelas Filme, sala, sessao, ingresso
CREATE TABLE filmes(
	id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    duracao_min INT NOT NULL,
    classificacao VARCHAR(5)
);
CREATE TABLE sala(
	numero INT PRIMARY KEY,
    capacidade INT NOT NULL
);
CREATE TABLE sessao(
	id INT PRIMARY KEY AUTO_INCREMENT,
    data_hora DATETIME NOT NULL,
    filme_id INT NOT NULL,
    FOREIGN KEY (filme_id)
    REFERENCES filmes(id),
    sala_numero INT NOT NULL,
    FOREIGN KEY (sala_numero)
    REFERENCES sala(numero)
);
ALTER TABLE filmes ADD genero VARCHAR(30);
CREATE TABLE promocao(
	id INT PRIMARY KEY,
    descricao VARCHAR(100)
);
DROP TABLE promocao;
