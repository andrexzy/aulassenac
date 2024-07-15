CREATE TABLE IF NOT EXISTS livraria

USE livraria;

CREATE TABLE IF NOT EXISTS livros(
	id int primary key auto_increment,
	nome_do_livro VARCHAR(40),
	nome_do_autor VARCHAR(50),
	sexo_do_autor CHAR(1),
	numero_de_paginas INTEGER(4),
	nome_da_editora VARCHAR(30),
	valor_do_livro DECIMAL (5,2),
	uf_editora CHAR(2),
	ano_de_publicaçao INTEGER(4)
);



INSERT INTO livros (nome_do_livro , nome_do_autor , sexo_do_autor , numero_de_paginas , nome_da_editora , valor_do_livro , uf_editora , ano_de_publicaçao)
VALUES ('cavaleiro real' , 'Ana claudia' , 'F' , '465' , 'atlas', '49,9'​ , 'RJ​' , '2009​');
INSERT INTO livros (nome_do_livro , nome_do_autor , sexo_do_autor , numero_de_paginas , nome_da_editora , valor_do_livro , uf_editora , ano_de_publicaçao)
VALUES ('SQL para leigos​' , 'João Nunes' , 'M' , '​450' , '​Addison' , ​'98​' , 'SP​' , '2018​');
INSERT INTO livros (nome_do_livro , nome_do_autor , sexo_do_autor , numero_de_paginas , nome_da_editora , valor_do_livro , uf_editora , ano_de_publicaçao)
VALUES ('Receitas caseiras​' ,' Célia Tavares​' , 'F' ,​ '210​' , 'Atlas' ,​ '45​' , 'RJ​' , '2008'​);
INSERT INTO livros (nome_do_livro , nome_do_autor , sexo_do_autor , numero_de_paginas , nome_da_editora , valor_do_livro , uf_editora , ano_de_publicaçao)
VALUES ('Pessoas efetivas​' , 'Eduardo Santos​' , 'M​' , '390​' , 'Beta​' , '78,99​' , 'RJ​' , '2018​');
INSERT INTO livros (nome_do_livro , nome_do_autor , sexo_do_autor , numero_de_paginas , nome_da_editora , valor_do_livro , uf_editora , ano_de_publicaçao)
VALUES ('Hábitos saudáveis​' , 'Eduardo Santos' ,​ 'M'​ , '630​' , 'Beta​' , '150,98​' , 'RJ​' , '2019'​);
INSERT INTO livros (nome_do_livro , nome_do_autor , sexo_do_autor , numero_de_paginas , nome_da_editora , valor_do_livro , uf_editora , ano_de_publicaçao)
VALUES ('A Casa Marrom​' , 'Hermes Macedo' ,​ 'M'​ , '250'​ , 'Bubba' ,​ '60' , 'MG​' , '2016​');
INSERT INTO livros (nome_do_livro , nome_do_autor , sexo_do_autor , numero_de_paginas , nome_da_editora , valor_do_livro , uf_editora , ano_de_publicaçao)
VALUES ('Estácio Querido'​ , 'Geraldo Francisco​' , 'M' , '310'​ , 'Insígnia'​ , '100​' , 'ES'​ , '2015​');
INSERT INTO livros (nome_do_livro , nome_do_autor , sexo_do_autor , numero_de_paginas , nome_da_editora , valor_do_livro , uf_editora , ano_de_publicaçao)
VALUES ('Pra sempre amigas​' , 'Leda Silva' ,​ 'F'​ , '510​' , 'Insígnia' ,​ '78,98​' , 'ES'​ , '2011​');
INSERT INTO livros (nome_do_livro , nome_do_autor , sexo_do_autor , numero_de_paginas , nome_da_editora , valor_do_livro , uf_editora , ano_de_publicaçao)
VALUES ('Copas Inesquecíveis'​ , 'Marco Alcântara​' , 'M' ,​ '200​' , 'Larson​' , '130,98​' , 'RS'​ , '2018'​);
INSERT INTO livros (nome_do_livro , nome_do_autor , sexo_do_autor , numero_de_paginas , nome_da_editora , valor_do_livro , uf_editora , ano_de_publicaçao)
VALUES ('O poder da mente​' , 'Clara Mafra'​ , 'F'​ , '120'​ , 'Continental​' , '56,58​' , 'RS'​ , '2017​');



SELECT * 
FROM livros;

select nome_livro, nome_livro
from livro;

select nome_livro, uf_editora
from livro
where sexo_autor = 'M';

select nome_livro, numero_paginas
from livros
where sexo_autor = 'F';

select valor_do_livro
from livro
where uf_editora = 'SP';

select nome_autor, sexo_autor 
from livros
where sexo_autor = 'M' and (uf_editora = 'RJ' or uf_editora = 'SP');
livros