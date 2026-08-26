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