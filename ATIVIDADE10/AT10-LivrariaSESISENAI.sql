-- Criando Banco de dados 
CREATE DATABASE db_livrariaSenai;

-- Usando o Banco de dados
USE db_livrariaSenai;

-- Tabela cliente
CREATE TABLE IF NOT EXISTS tb_cliente(
id_cliente int PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome varchar(45),
cpf varchar (11),
rg varchar(11),
email varchar(45)
);

-- Cliantes telefone
CREATE TABLE IF NOT EXISTS cliente_televofe(
id_telefone int PRIMARY KEY NOT NULL AUTO_INCREMENT,
televofe varchar(15),
CLIENTE_id_cliente int NOT NULL,
FOREIGN KEY (CLIENTE_id_cliente)  REFERENCES tb_cliente(id_cliente)
);
-- clientes_endereco
CREATE TABLE IF NOT EXISTS clientes_endereco(
id_endereco int PRIMARY KEY NOT NULL AUTO_INCREMENT,
rua varchar (45),
numero int,
cidade varchar(45),
estado varchar(45),
CLIENTE_id_cliente int NOT NULL,
FOREIGN KEY (CLIENTE_id_cliente) REFERENCES tb_cliente(id_cliente)
);

-- Tabela livro
CREATE TABLE IF NOT EXISTS tb_livro(
id_livro int PRIMARY KEY NOT NULL AUTO_INCREMENT,
titulo varchar(45),
categoria varchar(45),
isbn varchar (13),
ano year,
valor decimal (10,2),
autor varchar (45),
EDITORA_id_editora int NOT NULL,
FOREIGN KEY (EDITORA_id_editora) REFERENCES tb_editora(id_editora)
);
-- Tabela editora
CREATE TABLE IF NOT EXISTS tb_editora(
id_editora int PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome_editora varchar(45),
nome_contato varchar(45),
email varchar (45),
contato varchar (45)
);

-- Tabela pedido
CREATE TABLE  IF NOT EXISTS tb_pedido(
id_pedido int PRIMARY KEY NOT NULL AUTO_INCREMENT,
valor decimal (10,2) NOT NULL,
dia_hora date,
CLIENTE_id_cliente int NOT NULL,
FOREIGN KEY (CLIENTE_id_cliente) REFERENCES tb_cliente(id_cliente)
);

-- Table item_pedido
CREATE TABLE IF NOT EXISTS tb_item_pedido(
quantidade int ,
valor decimal (10,2) NOT NULL,
PEDIDO_id_pedido int NOT NULL,
LIVRO_id_livro int NOT NULL,
FOREIGN KEY (LIVRO_id_livro) REFERENCES tb_livro(id_livro),
FOREIGN KEY (PEDIDO_id_pedido) REFERENCES tb_pedido(id_pedido)
);

-- Tabela estoque 
CREATE TABLE IF NOT EXISTS tb_estoque( 
quantidade int,
LIVRO_id_livro int NOT NULL,
FOREIGN KEY (LIVRO_id_livro) REFERENCES tb_livro(id_livro)
);
