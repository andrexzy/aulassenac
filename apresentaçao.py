import sqlite3

conexao=sqlite3.connect('exemplo.dp')

cursor=conexao.cursor()
 
cursor.execute('''
CREATE KEYSPACE mykeyspace WITH replication = {'class': 'SimpleStrategy', 'replication_factor' : 1};

USE mykeyspace;

CREATE TABLE mytable (
    id UUID PRIMARY KEY,
    name text,
    age int
)







''')

conexao.close



from cassandra.cluster import Cluster
from cassandra.auth import PlainTextAuthProvider

# Conexão com o banco de dados Cassandra
def connect_to_cassandra():
    cloud_config= {
        'secure_connect_bundle': 'path_to_secure_connect_bundle.zip'
    }
    auth_provider = PlainTextAuthProvider('your_client_id', 'your_client_secret')
    cluster = Cluster(cloud=cloud_config, auth_provider=auth_provider)
    session = cluster.connect('your_keyspace_name')
    return session

# Função para visualizar registros
def view_users(session):
    rows = session.execute("SELECT id, name, email FROM users")
    for row in rows:
        print(f"ID: {row.id}, Name: {row.name}, Email: {row.email}")

# Função para editar um registro
def edit_user(session, user_id, new_name, new_email):
    session.execute("""
        UPDATE users
        SET name = %s, email = %s
        WHERE id = %s
    """, (new_name, new_email, user_id))
    print(f"User with ID {user_id} updated.")

# Função para deletar um registro
def delete_user(session, user_id):
    session.execute("DELETE FROM users WHERE id = %s", (user_id,))
    print(f"User with ID {user_id} deleted.")

# Exemplo de uso
if __name__ == "__main__":
    session = connect_to_cassandra()

    # Visualizar todos os usuários
    view_users(session)

    # Editar um usuário
    edit_user(session, 1, "New Name", "new_email@example.com")

    # Deletar um usuário
    delete_user(session, 2)
