select p.descricao as 'Descrição',
p.unidade as 'Unidade',  p.valor as 'Valor Unitário'
from produto p order by p.descricao;