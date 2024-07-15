USE loja;

create table if not exists clientes(
	id INT auto_increment primary key not null,
    nome VARCHAR(50) NOT NULL,
    cpf CHAR(11) unique not null
);

create table if not exists compras(
	id int auto_increment primary key,
    data_compra date not null,
    id_cliente int not null,
    
    foreign key (id_cliente) references clientes(id)
);

create table if not exists produtos(
	id int auto_increment primary key,
    nome varchar (50) not null,
    descricao varchar(250),
    preco decimal(10,2) not null
);

create table compras_produtos(
	id_produto int not null,
    id_compra int not null,
    quantidade int not null,
    
    primary key (id_produto, id_compra),
    
    foreign key (id_produto) references produtos(id),
    foreign key (id_compra) references compras(id)
);
 
INSERT INTO clientes (nome, cpf) VALUES ('João Silva', '12345678901');
INSERT INTO clientes (nome, cpf) VALUES ('Maria Oliveira', '23456789012');
INSERT INTO clientes (nome, cpf) VALUES ('Pedro Santos', '34567890123');
INSERT INTO clientes (nome, cpf) VALUES ('Ana Souza', '45678901234');
INSERT INTO clientes (nome, cpf) VALUES ('Carlos Lima', '56789012345');
INSERT INTO clientes (nome, cpf) VALUES ('Juliana Costa', '67890123456');
INSERT INTO clientes (nome, cpf) VALUES ('Rafael Mendes', '78901234567');
INSERT INTO clientes (nome, cpf) VALUES ('Fernanda Pereira', '89012345678');
INSERT INTO clientes (nome, cpf) VALUES ('Gabriel Ferreira', '90123456789');
INSERT INTO clientes (nome, cpf) VALUES ('Patrícia Rodrigues', '01234567890');
 
-- Compras em Abril
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-04-05', 1);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-04-10', 2);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-04-15', 3);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-04-20', 4);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-04-25', 5);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-04-05', 6);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-04-10', 7);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-04-15', 8);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-04-20', 9);
 
-- Compras em Maio
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-05-01', 1);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-05-06', 2);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-05-11', 3);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-05-16', 4);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-05-21', 5);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-05-26', 6);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-05-31', 7);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-05-06', 8);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-05-11', 9);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-05-16', 10);
 
-- Compras em Junho
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-06-03', 1);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-06-08', 2);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-06-13', 3);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-06-18', 4);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-06-23', 5);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-06-28', 6);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-06-03', 7);
INSERT INTO compras (data_compra, id_cliente) VALUES ('2024-06-08', 8);
 
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto A', 'Descrição do Produto A', 10.50);
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto B', 'Descrição do Produto B', 20.00);
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto C', 'Descrição do Produto C', 15.75);
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto D', 'Descrição do Produto D', 8.99);
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto E', 'Descrição do Produto E', 30.20);
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto F', 'Descrição do Produto F', 5.50);
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto G', 'Descrição do Produto G', 12.00);
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto H', 'Descrição do Produto H', 25.30);
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto I', 'Descrição do Produto I', 7.75);
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto J', 'Descrição do Produto J', 18.50);
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto K', 'Descrição do Produto K', 22.00);
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto L', 'Descrição do Produto L', 9.99);
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto M', 'Descrição do Produto M', 14.20);
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto N', 'Descrição do Produto N', 6.50);
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto O', 'Descrição do Produto O', 19.00);
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto P', 'Descrição do Produto P', 23.30);
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto Q', 'Descrição do Produto Q', 10.75);
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto R', 'Descrição do Produto R', 16.50);
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto S', 'Descrição do Produto S', 11.00);
INSERT INTO produtos (nome, descricao, preco) VALUES ('Produto T', 'Descrição do Produto T', 24.50);
 
-- Compras em Abril
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (1, 1, 2);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (1, 2, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (2, 3, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (2, 4, 3);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (3, 5, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (3, 6, 2);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (4, 7, 2);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (4, 8, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (5, 9, 3);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (5, 10, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (6, 11, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (6, 12, 2);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (7, 13, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (7, 14, 3);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (8, 15, 2);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (8, 16, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (9, 17, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (9, 18, 2);
 
-- Compras em Maio
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (10, 19, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (10, 20, 3);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (11, 1, 2);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (11, 2, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (12, 3, 3);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (12, 4, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (13, 5, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (13, 6, 2);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (14, 7, 2);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (14, 8, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (15, 9, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (15, 10, 2);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (16, 11, 2);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (16, 12, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (17, 13, 3);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (17, 14, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (18, 15, 2);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (18, 16, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (19, 17, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (19, 18, 2);
 
-- Compras em Junho
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (20, 19, 3);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (20, 20, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (21, 1, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (21, 2, 2);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (22, 3, 2);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (22, 4, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (23, 5, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (23, 6, 3);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (24, 7, 2);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (24, 8, 1);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (25, 9, 2);
INSERT INTO compras_produtos (id_compra, id_produto, quantidade) VALUES (25, 10, 1);

-- questao 1
SELECT * FROM clientes;

-- questao 2

use loja;

select id, data_compra
from compras
where month(data_compra) = 5 and year(data_compra) = 2024


-- questao 3

SELECT b.nome, c.data_compra
FROM clientes AS b
INNER JOIN compras AS c ON b.id_cliente = c.id_cliente
WHERE b.cpf = '12345678901'
ORDER BY b.nome;

-- questao 8

SELECT clientes, MAX('valor')
FROM produtos
GROUP BY clientes

-- questao 9

SELECT DISTINCT c.nome_cliente, c.cpf
FROM clientes c
JOIN compras co ON c.id_cliente = co.id_cliente
JOIN itens_compra ic ON co.id_compra = ic.id_compra
JOIN produtos p ON ic.id_produto = p.id_produto
WHERE p.nome_produto = 'Produto A';

-- questao 10

SELECT p.nome_pro
duto
FROM produtos p
LEFT JOIN itens_compra ic ON p.id_produto = ic.id_produto
WHERE ic.id_produto IS NULL;
