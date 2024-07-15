CREATE DATABASE IF NOT EXISTS loja;

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
    desccricao varchar(250),
    preco decimal(10,2) not null
);

create table compras_produtos(
	id_produto int not null,
    id_compra int not null,
    quantidade int not null,
    
    primary key (id_produto, id_compra),
    
    foreign key (id_produto) references produto(id),
    foreign key (id_compra) references compras(id)
);

insert into clientes (id, nome, cpf) values('1', 'naruto', '12345678900');
insert into clientes (id, nome, cpf) values('2', 'rock lee', '32165489700');
insert into clientes (id, nome, cpf) values('3', 'goku', '45678912300');
insert into clientes (id, nome, cpf) values('4', 'yugi', '78912345688');
insert into clientes (id, nome, cpf) values('5', 'ash', '56789412566');

insert into compras (id, nome, cpf) values('1', 'naruto', '12345678900');
insert into compras (id, nome, cpf) values('2', 'rock lee', '32165489700');
insert into conmpras (id, nome, cpf) values('3', 'goku', '45678912300');
insert into compras (id, nome, cpf) values('4', 'yugi', '78912345688');
insert into compras (id, nome, cpf) values('5', 'ash', '56789412566');
SELECT * FROM clientes;