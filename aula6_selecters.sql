select avg(salario) as 'MEDIA SALARIAL' from vendedor;

select count(*) as 'TOTAL' from vendedor v where v.salario>2500;


select distinct(unidade) from produto;

select p.numero as 'PEDIDO',pp.qtde as 'QTDE' from pedido p
join pedido_produto pp on (p.numero = pp.numeroPedido)
group by p.numero order by p.numero;

select pp.numeroPedido as 'PEDIDO', count(pp.qtde) as 'QTDE'
FROM PEDIDO_PRODUTO PP
GROUP BY PP.NUMEROpEDIDO
ORDER BY PP.NUMEROpEDIDO;

desc pedido;
desc cliente;
desc pedido;

select c.nome, pp.numero from pedido pp
join cliente c on (c.codigo = pp.codigoCliente);


#Mostre a quantidade de cidades de São Paulo que não possuem clientes

select cidade.nome from cidade where codigoEstado ='26';

select cidade.nome from cidade where codigoEstado ='26';

select * from cliente where nome ='Beth';

desc cidade;

select cliente.nome, cidade.nome from cliente, cidade where cidade.codigoEstado ='26';

#todos os clientes de sp
select count(c.nome), cd.nome from cidade cd
join cliente c on (c.codigoCidade = cd.codigo);

select codigoCidade from cliente where nome = 'Beth';

select nome from cidade where codigo = 5341;

select c.nome, cd.nome from cidade cd
join cliente c on (c.codigoCidade = cd.codigo);

#todas as cidades de São paulo
select count(*) from cidade where codigoEstado = 26;
