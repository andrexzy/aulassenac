'''
def fatorial(n):
    resultado = 1
    for i in range(2 ,n + 1):
        resultado *=i


numero=int(input("digite um numeoro inteiro: "))
print(f"fatorial de {numero} é de {fatorial(numero)}")
'''
'''
import re

def validar_senha(senha):
    if(len(senha) >=8 and
        re.search(r"[A-Z]", senha) and
        re.search(r"[a-z]", senha) and
        re.search(r"\d", senha) and
        re.search(r"[!@#$%*""()[]{}]" )):
        return  True
    else:
            return False
'''
'''
def lista_de_compras():
    compras=[]

    while True:
          print("")
           print("")
            print("")
            print("")
            print("")
            escolha=input("Digite o item  que deva ser adicionado")
            if escolha =="1":
            item=input("")
            compras
          
'''

def is_palindrome(number):
    # Convertendo o número para uma string para facilitar a manipulação dos caracteres
    num_str = str(number)
    
    # Verificando se a string é igual à sua inversa
    if num_str == num_str[::-1]:
        return True
    else:
        return False

# Exemplo de uso:
numero = 12321
if is_palindrome(numero):
    print(f"{numero} é um palíndromo.")
else:
    print(f"{numero} não é um palíndromo.")
