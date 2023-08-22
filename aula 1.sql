#criando meu banco de dados
create database aula_2108;
use aula_2108;
#drop databese aula_2108;
create table cliente(
	id int primary key not null auto_increment,
    nome varchar(255) not null,
    idade int null
);
create table categoria(
	id int primary key not null auto_increment,
    nome varchar(45) not null
);
create table produtos(
	id int primary key not null auto_increment,
    nome varchar(45) not null,
    preco float(10,2),
    idCategoria int not null,
    foreign key(idCategoria) references categoria(id)
);
create table pedido(
	id int primary key not null auto_increment,
    numero int not null unique,
    dataPedido datetime,
    idCliente int not null,
    foreign key(idCliente) references cliente(id)
);

desc categoria;

alter table categoria
change nome nomeCategoria varchar(100) null;

create table pedido_produto(
	idPedido int not null,
    idProduto int not null,
    qtde int not null
);
alter table pedido_produto
add constraint fk_pedido foreign key (idPedido) references pedido(id);

alter table pedido_produto
add constraint fk_pedido foreign key (idProduto) references pedido(id);
#drop table cliente