#teste de alias
use sistema;
select * from estado;
update estado set nome='Rio Grande do Sul' where sigla='RS';

select e.nome as 'ESTADO', E.SIGLA AS 'uf' , C.NOME AS 'cidade'
from estado e , cidade c  
where c.codigoEstado = e.codigo
and e.sigla='SP'
order by e.nome,c.nome;