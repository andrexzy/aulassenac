import sqlite3

conexao=sqlite3.connect('exemplo.db')

cursor=conexao.cursor()












cursor.execute('''CREATE KEYSPACE minha_empresa WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

USE minha_empresa;

CREATE TABLE funcionarios()
    id UUID PRIMARY KEY,
    nome TEXT,
    cargo TEXT,
    salario DECIMAL
)

INSERT INTO funcionarios (id, nome, cargo, salario) VALUES (uuid(), 'Alice', 'Desenvolvedora', 7000.00);
INSERT INTO funcionarios (id, nome, cargo, salario) VALUES (uuid(), 'Bob', 'Gerente', 9000.00);
INSERT INTO funcionarios (id, nome, cargo, salario) VALUES (uuid(), 'Carol', 'Analista', 6000.00);

SELECT * FROM funcionarios;
'''
)
