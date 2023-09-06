use lojinhaprof;

select * from estado where uf='RS';
select codigo from estado where uf in ('RS','SC');

select * from cidade where codigoEstado in (select codigo from estado where uf in ('RS','SC'));

select * from pedido;

#Calcule a quantidade de pedidos e média de prazo de João2

UPDATE vendedor
SET nome = 'João2'
WHERE codigo=11;

select format(avg(prazo),1) as 'Media Prazo', count(codigoVendedor) as 'QTDE' from pedido where codigoVendedor = 11;

select avg(prazo), count(codigoVendedor) as 'QTDE' from pedido where codigoVendedor in (select codigo from vendedor where nome = 'Joao2');
