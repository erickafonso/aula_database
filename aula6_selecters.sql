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
join cliente c on (c.codigo = pp.codigoCliente)