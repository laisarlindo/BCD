CREATE DATABASE IF NOT EXISTS db_dorama;

USE db_dorama;

CREATE TABLE tb_dorama(
id_dorama INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
categoria VARCHAR(45),
episodios VARCHAR(45),
emissora VARCHAR(45)
);

CREATE TABLE tb_personagens(
id_personagem INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
papel VARCHAR(45),
pontoForte VARCHAR(45),
DORAMA_id_dorama INT,
FOREIGN KEY (id_dorama) REFERENCES Dorama(id_dorama)
);

