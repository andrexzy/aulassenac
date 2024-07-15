SELECT compras_produtos.id_compra, produtos.nome, compras_produtos.quantidade
from produtos, compras_produtos
where produtos.id = compras_produtos.id_produto;