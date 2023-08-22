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

create table usuario(
	id int not null,
    nome varchar(45) not null

);

#sessão abaixo foi um struggling de nao ter adicionado auto_increment
# na primary key de usuario, sendo necessario dropa a foreign key e alterar 

alter table pedido
add usuario_id int not null;

alter table usuario
add constraint pk_id primary key (id);


alter table pedido
add constraint fk_usuario foreign key (usuario_id) references usuario(id);

alter table usuario
 modify id int not null auto_increment;
 
 alter table pedido
 drop foreign key fk_usuario;
 
 
 
#drop table cliente