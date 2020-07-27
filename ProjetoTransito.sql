CREATE DATABASE transito;

CREATE TABLE projetotransito (
idtransito INT NOT NULL PRIMARY KEY,
nomeprojeto VARCHAR(50),
idequipamento INT,
FOREIGN KEY (idequipamento) REFERENCES equipamento (idequipamento)
);

CREATE TABLE equipamento (
idequipamento INT NOT NULL PRIMARY KEY,
velocidade_permitida FLOAT NOT NULL,
local_instalacao VARCHAR(50),
idpassagem INT, 
FOREIGN KEY (idpassagem) REFERENCES passagem (idpassagem)
);

CREATE TABLE passagem (
idpassagem INT NOT NULL PRIMARY KEY,
horario DATETIME,
velveiculo FLOAT,
excedeu BOOLEAN
);

INSERT INTO projetotransito (idtransito, nomeprojeto, idequipamento) VALUES
('1', 'teste', '1'),
('1', 'teste', '2');

INSERT INTO equipamento (idequipamento, velocidade_permitida, local_instalacao) VALUES
('1', '100', 'rua 6'),
('2', '90', 'rua 2');

INSERT INTO passagem (horario, velveiculo, excedeu, idequipamento, idpassagem) VALUES
('1111-12-23 22:33:44', '120', '1', '1', '200'),
('1111-12-23 22:33:44', '100', '0', '1', '201'),
('1111-12-23 22:33:44', '140', '1', '2', '202'),
('1111-12-23 22:33:44', '90', '0', '2', '203'),
('1111-12-23 22:33:44', '125', '1', '1', '204');

SELECT * FROM projetotransito;