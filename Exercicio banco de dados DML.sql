create database exercicios_30_08;
use exercicios_30_08;

create table cliente(
Codigo_Cliente int not null unique primary key auto_increment,
Nome_do_Cliente varchar(50) not null,
Endereco varchar(100) not null,
Cidade varchar(100) not null,
Cep varchar(100) null,
UF varchar(3) not null,
CNPJ varchar(16) not null unique,
IE varchar(4) null
);

create table vendedor(
Codigo_Vendedor int not null unique primary key auto_increment,
Nome_do_Vendedor varchar(50) not null,
Salario real not null,
Faixa_Comissao varchar(1) not null
);

create table pedido(
Numero_Pedido int not null unique primary key auto_increment,
Prazo_Entrega int(2) not null,
Codigo_Cliente int not null,
foreign key(Codigo_Cliente) references cliente(Codigo_Cliente),
Codigo_Vendedor int not null,
foreign key(Codigo_Vendedor) references vendedor(Codigo_Vendedor)

);

create table produto(
Codigo_Produto int not null unique primary key auto_increment,
Unidade_Produto varchar(5) not null,
Descricao_Produto varchar(50) not null,
Valor_Unitario real not null
);

create table itempedido(
Numero_Pedido int not null,
foreign key(Numero_Pedido) references pedido(Numero_Pedido),
Quantidade int not null,
Codigo_Produto int not null,
foreign key(Codigo_Produto) references produto(Codigo_Produto)
);




