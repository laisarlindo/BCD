DROP DATABASE IF EXISTS db_livrariasenai;

CREATE DATABASE IF NOT EXISTS db_livrariasenai;

USE db_livrariasenai;

CREATE TABLE IF NOT EXISTS tb_cliente(
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome_cliente VARCHAR(45),
cpf VARCHAR (11),
rg VARCHAR(11),
email VARCHAR (45)
);

INSERT INTO tb_cliente (id_cliente,nome_cliente,cpf,rg,email) 
VALUES
(DEFAULT,'Evellyn', 3455678908, 6678543456,'eve@123'),
(DEFAULT, 'Kim Mingyu', 78905645,3345678902,'mingyu@lindo123'),
(DEFAULT, 'Jeon Wonwoo', 89674567,7890935,'wonwoo@calmo204'),
(DEFAULT, 'Yoon Jeong-han',56782345,567412,'anjo@lindo120'),
(DEFAULT, 'Xú Mínghào', 67459045,224567809,'fashion@perfeito456'),
(DEFAULT, 'Wen Junhui', 78953423,44567890,'melhor@ator567'),
(DEFAULT, 'Kwon Soon-young', 66774533,99008876,'dancer@mundo900'),
(DEFAULT, 'Joshua Hong', 99786654,4455778800,'cavaleiro@lindo700'),
(DEFAULT, 'Lee Seok-min', 5007896,7789988009,'alegria@grande1000'),
(DEFAULT, 'Lee Ji-hoon', 3388992200,77897907,'compositor@incrivel200');

CREATE TABLE IF NOT EXISTS tb_telefone_cliente(
id_telefone_cliente INT PRIMARY KEY AUTO_INCREMENT,
telefone VARCHAR(11),
CLIENTE_id_cliente INT NOT NULL,
FOREIGN KEY (CLIENTE_id_cliente) REFERENCES tb_cliente(id_cliente)
);

INSERT INTO tb_telefone_cliente VALUES
(DEFAULT, 118976007,1),
(DEFAULT, 1177678954,2),
(DEFAULT, 1122345678,3),
(DEFAULT, 1133456789,4),
(DEFAULT, 11876534,5),
(DEFAULT, 11923456789,6),
(DEFAULT, 1190876541,7),
(DEFAULT, 1143567890,8),
(DEFAULT, 115670922,9),
(DEFAULT, 1181508877,10),
(DEFAULT, 118976000,1),
(DEFAULT, 118976090,1),
(DEFAULT, 118976080,1),
(DEFAULT, 118976030,1);

CREATE TABLE IF NOT EXISTS tb_endereco_cliente(
id_endereco_cliente INT PRIMARY KEY AUTO_INCREMENT,
rua VARCHAR(45),
bairro VARCHAR(45),
numero INT,
cidade VARCHAR(45),
estado VARCHAR (45),
CLIENTE_id_cliente INT NOT NULL,
FOREIGN KEY (CLIENTE_id_cliente) REFERENCES tb_cliente(id_cliente)
);

INSERT INTO tb_endereco_cliente VALUES
(DEFAULT,'rua do kpop', 'bom retiro', 89, 'São Paulo', 'SP',1),
(DEFAULT,'rua do dorama', 'libertadade', 99, 'São Paulo', 'SP',2),
(DEFAULT,'rua praça da sé', 'alphavile', 20, 'São Paulo', 'SP',3),
(DEFAULT,'rua do amor', 'lindinhas', 100, 'São Paulo', 'SP',4),
(DEFAULT,'rua da alegria', 'bleu', 200, 'São Paulo', 'SP',5),
(DEFAULT,'rua animada', 'new jeans', 56, 'São Paulo', 'SP',6),
(DEFAULT,'rua oh my', 'seventeen', 90, 'São Paulo', 'SP',7),
(DEFAULT,'rua du-du-du', 'blackpink', 83, 'São Paulo', 'SP',8),
(DEFAULT,'rua twice', 'what is love', 23, 'São Paulo', 'SP',9),
(DEFAULT,'rua boynexdoor', 'serenade', 58, 'São Paulo', 'SP',10),
(DEFAULT,'rua woodz', 'drowning', 98, 'São Paulo', 'SP',1),
(DEFAULT,'rua do kpop', 'bom retiro', 230, 'São Paulo', 'SP',1),
(DEFAULT,'rua do kpop', 'bom retiro', 102, 'São Paulo', 'SP',1),
(DEFAULT,'rua do kpop', 'bom retiro', 108, 'São Paulo', 'SP',1),
(DEFAULT,'rua do kpop', 'bom retiro', 77, 'São Paulo', 'SP',1);

CREATE TABLE IF NOT EXISTS tb_editora(
id_editora INT PRIMARY KEY AUTO_INCREMENT,
nome_editora VARCHAR(45),
nome_contato VARCHAR(45),
email VARCHAR(45)
);

INSERT INTO tb_editora VALUES
(DEFAULT, 'senai', 'leandro', 'senai@2020'),
(DEFAULT, 'mundo coreano', 'babymonster', 'yglinda@big3'),
(DEFAULT, 'alegria', 'bruna', 'magia@123'),
(DEFAULT, 'divertitamente', 'ansiedade', 'cinema@oscar'),
(DEFAULT, 'irei quando o tempo estiver bom', 'dorama', 'meuprimeiro@dorama2020');

CREATE TABLE IF NOT EXISTS tb_livro(
id_livro INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(45),
isbn VARCHAR(11),
ano YEAR,
valor DECIMAL (10,2),
autor VARCHAR (45),
EDITORA_id_editora INT NOT NULL,
FOREIGN KEY (EDITORA_id_editora) REFERENCES tb_editora(id_editora)
);







