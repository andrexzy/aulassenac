select p.nome, sum(cp.quantidade)
from produtos as p
	inner join compras_produtos as cp
    on p.id = cp.id_produto
group by p.id;
order by saídas
limit 5