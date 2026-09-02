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