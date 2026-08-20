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