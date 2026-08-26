CREATE DATABASE oficina_turbocar2;

USE oficina_turbocar2;

CREATE TABLE cliente(
    idcliente INT(4) AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(100) NOT NULL,
    idade INT(3) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

CREATE TABLE servico(
    idservico INT(4) AUTO_INCREMENT PRIMARY KEY,
    idcliente INT(4) NOT NULL,
    tipo_servico VARCHAR(100) NOT NULL,
    data_servico DATE,
    FOREIGN KEY(idcliente) REFERENCES cliente(idcliente)
);

INSERT INTO cliente(nome_cliente, idade, cidade, telefone) VALUES 
('Carlos Mendes', 42, 'São Paulo', '(11) 99999-1111'),
('Fernanda Souza', 35, 'Campinas', '(19) 98888-2222'),
('Rodrigo Alves', 28, 'Sorocaba', '(15) 97777-3333'),
('Juliana Rocha', 31, 'São Paulo', '(11) 96666-4444'),
('Gabriel Lima', 25, 'Santos', '(13) 95555-5555');

INSERT INTO servico(idcliente, tipo_servico) VALUES
(1, 'Troca de Óleo'),
(1, 'Alinhamento'),
(2, 'Balanceamento'),
(3, 'Revisão Completa'),
(4, 'Troca de Pneus');

-- Atualizar dados

UPDATE cliente
SET cidade = 'Jundiaí'
WHERE idcliente = 3;

UPDATE servico
SET tipo_servico = 'Balanceamento e Alinhamento'
WHERE idservico = 3;

update cliente set cidade = 'Capital' where  idcliente = 1;
update cliente set cidade = 'Capital' where  idcliente = 4;

-- Deletar dados

DELETE FROM servico
WHERE idservico = 5;

DELETE FROM cliente
WHERE idcliente = 4;

--Selects
SELECT * FROM oficina_turbocar2.cliente;
SELECT nome_cliente,telefone FROM cliente;
SELECT * FROM cliente where idade >=30;
SELECT * FROM cliente where cidade = 'Campinas';
SELECT * FROM oficina_turbocar2.servico;
--ajuda de pesquisa
SELECT * FROM cliente ORDER BY nome_cliente ASC;
SELECT * FROM cliente WHERE idade BETWEEN 25 AND 35;