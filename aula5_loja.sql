create database lojinhaProf;
use lojinhaProf;

create table estado(
	codigo int primary key auto_increment,
    nome varchar(255) not null,
    uf varchar(2) not null
);

create table cidade(
	codigo int primary key auto_increment,
    nome varchar(255) not null,
    codigoEstado int not null,
    foreign key(codigoEstado) references estado(codigo)
);

create table cliente (
	codigo int primary key auto_increment,
    nome varchar(255) not null,
    endereco varchar(255) not null,
	codigoCidade int not null, #criar a  FK
    cep varchar(15) null,
    cnpj varchar(20) not null,
    ie int(4) null,
    foreign key (codigoCidade) references cidade(codigo)
);

create table vendedor(
	codigo int primary key auto_increment,
    nome varchar(255) not null,
    salario float(10,2) not null,
    faixaComissao enum('A','B','C')
);

create table pedido(
numero int primary key auto_increment,
prazo int not null,
codigoCliente int not null,
codigoVendedor int not null,
foreign key (codigoCliente) references cliente(codigo),
foreign key (codigoVendedor) references vendedor(codigo)
);

create table produto(
	codigo int primary key auto_increment,
    unidade varchar(3) not null,
    descricao varchar(100) not null,
    valor float(10,2) not null
);

create table pedido_produto(
	numeroPedido int not null,
    codigoProduto int not null,
    qtde int not null,
    foreign key(numeroPedido) references pedido(numero),
    foreign key(codigoProduto) references produto(codigo)
);

show tables;
desc pedido_produto;