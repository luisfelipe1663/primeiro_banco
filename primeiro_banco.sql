CREATE DATABASE escola;
USE escola;
create table aluno(
idaluno int(4) auto_increment primary key,
nome_aluno varchar(100) not null,
idade int(3) not null,
serie varchar(20) not null, 
cidade varchar(50) not null
);
CREATE TABLE matricula(
idmatricula INT(4) auto_increment primary key,
idaluno int(4) not null,
curso varchar(50) not null, 
data_matricula date,
foreign key(idaluno) references aluno(idaluno)
);

insert into aluno(nome_aluno,idade,serie,cidade) VALUES ('Emilli Vitoria',18,'3º ano', 'Sâo paulo');
('Luis felipe',18,'3º ano', 'Sâo paulo'),
('Renato',17,'3º ano', 'Sâo paulo'),
('Francisco',50,'1º ano', 'bahia');

insert into matricula(idaluno, curso, data_matricula) values
( 1, 'matematica', '2024-02-01'),
( 1, 'fisica', '2024-02-10'),
( 2, 'historia', '2024-01-20'),
( 3, 'geografia', '2024-02-15'),
( 4, 'quimica', '2024-01-25');

update matricula set curso = 'biologia' where idaluno = 2 ;
update aluno set serie = 'Ensino fundamental' where idaluno = 2;


delete from matricula 
where idmatricula = 4;
delete from aluno where idaluno = 3


SELECT * FROM escola.aluno;
SELECT nome_aluno,cidade from aluno;
SELECT * from aluno where idade >=17;
SELECT * from aluno where cidade = 'São paulo';

--multiplicando o valor do produto
SELECT produto, preco_unidade *12 from produto;

--criando uma table para o resultado(quanto vale a duzia), mas nao "CRIA" de verdade
select produto, preco_unidade *12 as duzia from produtos;

--Nao entendi o que faz
select produto, "Esse valor é literal" valor, preco_unidade from produtos ;

--pode fazer contas com a linguagem sql
select 0.000001* 000.9090979895 as resultado;

--ordenando me ordem alfabetica
select produto from produtos order by produto;
--em ordem alfabetica de tras para frente
select produto from produtos order by produto desc;

--Nao seleciona apenas letras mas numeros tambem, do mais parado para o mais caro
select produto, preco_unidade from produtos order by preco_unidade;

--coloca um limite (os 10 primeiros clientes serão selecionados)
select id,nome,email from clientes limit 10;

--coloca um limite(os 10 ultimos clientes serão selecipnados)
select id,nome,email from clientes order by id desc limit 10;

--ele ira trazer 5 clientes a partir do id 6
select id,nome from clientes limit 5 offset 5;

--buscar o produto mais caro seguindo o preco como parametro, colocamos todos os produtos em ordem decrescente e limitamos para aparecer somente 1
-select * from produtos order by preco_unidade desc limit 1; 

-- mostra todas as cidades mas sem repetir nome
select distinct cidade from clientes;

--where permite definir confições de registros

select * from clientes where sexo = "f";
select * from clientes where sexo = "f" and cidade = "Lisboa";

--seleciona todos os colaboradores aonde o sexo é diferente a F
select * from colaboradores where sexo <> "f";

--seleciona todas as encomendas aonde a data-hora for menor ou igual "2030-01-02 10:00:00"
select * from encomendas where data_hora <= "2030-01-02 10:00:00";

--seleciona os preco_unidade que estão entre 1 e 2
select * from produtos where preco_unidade between 1 and 2;

--nao entendi
select * from clientes where cidade IN("Lisboa", "Viseu", "Coimbra");

--LIKE elementos especificos dentro de cada coluna
select nome from clientes where nome like "João%"; 

select nome from clientes where nome like "Daniel%"; 
select nome from clientes where nome like "%Silva%"; 
select nome,email from clientes where email like "%gmail.com"; 
select nome from clientes where nome like "A%S"; 
select nome from clientes where nome like "Francisc_%"; 
select nome from clientes where nome like "__a%"; 


select * from colaboradores where ativo is not NULL;

select *, preco_unidade *6 as `Preço por duzia`, preco_unidade * 24 as `duas duzias` from produtos; 

select clientes.nome, encomendas.* from clientes, encomendas where clientes.id = encomendas.id_cliente limit 5;
--simplificando o de cima trocando clientes por C e encomendas por E
select c.nome, e.* from clientes c, encomendas e where c.id = e.id_cliente limit 5; 

-- tras o total de elementos da minha tabela
select count(*) as total from encomendas;

--JOINS-------------------------------
--Esta query vai devolver os nomes dos clientes, o id hora das encomendas em que cada cliente esteve envolvido
SELECT c.nome, e.id, e.data_hora from clientes c left JOIN encomendas e ON e.id_cliente = c.id where c.id = 5;

SELECT c.*, e.* from colaboradores c left JOIN encomendas e on e.id_colaborador = c.id;

