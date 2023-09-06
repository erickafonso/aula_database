create database data;
use data;

create table estudantes(
id int not null unique primary key auto_increment,
nome varchar(50) not null,
idade int not null
);

create table professores(
id int not null unique primary key auto_increment,
nome varchar(50) not null,
idade int not null
);

insert into estudantes (id, nome, idade) values(
1,'Fernanda',20);


insert into estudantes (nome, idade)values(
'Maria',19),(
'Gabriel',21),(
'Antônio',23), (
'Marcos',21),(
'Sofia',22), (
'Laura',18), (
'Bruna',20);

select * from estudantes;

insert into professores (id, nome, idade) values(
1,'Roberto',40);

select * from professores order by id;

insert into professores ( nome, idade) values(
'Laura',35),(
'José',38),(
'Maria',45), (
'Antônio',50),(
'Geralda',32), (
'Marcos',45), (
'Otávio',30);

select e.id, e.nome as 'ESTUDANTE', p.id, p.nome as 'PROFESSOR' 
from estudantes as e 
right join professores as p on
 e.nome = p.nome
 ORDER BY p.id;
