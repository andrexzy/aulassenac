# Realizamos a importaçao da bibliotca SQLite
import sqlite3

#Abrimos a conexao e atribuimos ela a uma variavel
conexao=sqlite3.connect('exempo.db')
#Utilizamos as opçoes presentes na conexao
cursor=conexao.cursor()




#Executamos uma tarefa: criamos uma tabela caso ela nao existia, especificamos os campos
#que precisam ser preenchidos com nome do campo, tipo do campo e ,caso  precise , 
#chave primaria
cursor.execute('''                                                          

    CREATE TABLE IF NOT EXISTS usuarios(
    id INTEGER,PRIMARY KEY
    nome TEXT,
    idade INTEGER         


    )
               
                ''')
#Fechamos a conexao com a banco
conexao.close()