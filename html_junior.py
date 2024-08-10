'''
# Função



Como criar uma função: utiliza-se o comando def = soma da função = variaveis da funçao = ":"



def calculadora(a, b):
    soma=a+b
    subtracao=a-b
    multiplicacao=a*b
    if b !=0:
        divisao=a/b
    else:
        divisao="divisao por 0 nao é permitida!"

    return soma, subtracao, multiplicacao, divisao

num1=0
num2=1
resultado=calculadora(num1, num2)
print("soma: ",resultado[0])
print("subtracao: ",resultado[1])
print("multiplicao: ",resultado[2])
print("divisao: ",resultado[3])



def divisao(n1,n2):
    return n1/n2
dividir=divisao(10,10)
print(dividir)



def multiplicacao(n1,n2):
    return n1*n2
multiplicar=multiplicacao(10,10)
print(multiplicar)

def subtracao(n1,n2):
    return n1-n2
subtrair=subtracao(10,10)
print(subtrair)

def soma(n1,n2):
    return n1+n2
somar=soma(10,10)
print(somar)

'''

'''def fatorial(n):

    fat=1

    for i in range(1,n+1):
        fat*=i
    return fat

numero=int(input("digite o numero que deseja calcular o fatorial: "))

if numero <0:
        print("fatorial de 0 nao existe!")

else:
     print("fatorial de", numero, "é: ", fatorial(numero))'''






'''#Uma função que realize contagem regressiva

def contagem_regressiva():
    numero = int(input("Digite um numeor inteiro"))

    if numero <=0
        print("Por favor digite um numero inteiro e positivo")
    else:
        while numero >=0
            print(numnero)
            numero -= 1

contagem_regressiva()'''



'''def soma(a,b):
    return a+b 

def subtracao(a, b):
    return a-b

def multiplicacao(a, b):
    return a*b

def divisao(a, b):
    if b != 0:
        return a/b
    else:
        return "Divisao por zero nao e permitida!"
    
def calculadora():
    print("Bem-vindo a nossa calculadora básica ")
    print("Escolha uma das opções abaixo:")
    print("1 - Soma")
    print("2 - Subtracao")
    print("3 - Multiplicacao")
    print("4 - Divisao")

    opcao = int(input("Digite a opcao desejada: "))

    if opcao in ('1', '2', '3', '4'):
        num1 = float(input("Digite o primeiro numero: "))
        num2 = float(input("Digite o segundo numero: "))
        
        if opcao == '1':
            print("Resultado da soma: ", soma(num1, num2))
        if opcao == '2':
            print("Resultado da subtracao: ", subtracao(num1, num2))
        if opcao == '3':
            print("Resultado da multiplicacao: ", multiplicacao(num1, num2))
        if opcao == '4':
            print("Resultado da divisao: ", divisao(num1, num2))
    
    else:
        print("Opcao invalida! Tente novamente.")

calculadora()'''


'''C = float(input("Digite a temperatura em Celsius:"))
F = 32 + (9/5)*C
K = C + 273
print("A temperatura em Celsius é:",C,"°C")
print("A temperatura em Fahrenheit é:",F,"°F")
print("A temperatura em Kelvin é:",K,"K")'''

'''def conversor_temperatura():
    while True:
        try:
            celsius = float(input("Digite a temperatura em Celsius:"))
            break 
        except ValueError:
            print("Por favor, insira um número válido.")

    fahrenheit = 32 + (9/5)*celsius
    kelvin = celsius + 273

    print(f"A temperatura em Celsius é: {celsius}°C")
    print(f"A temperatura em Fahrenheit é: {fahrenheit}°F")
    print(f"A temperatura em Kelvin é: {kelvin} K")

conversor_temperatura()'''

'''class Calculadora:
    def soma(a,b):
      return a + b

    def subtracao(a, b):
      return a - b

    def multiplicacao(a, b):
      return a * b

    def divisao(a, b):
     if b != 0:
       return a / b
     else:
      print("Divisao por 0 nao permitida")

    def multiplicacao(a, b):
      return a * b

    
c = Calculadora()
num1 = 10
num2 = 5
c.divisao(num1, num2)'''

class Pessoa:
    def __init__(self, nome, idade , peso, altura):
        self.nome = nome
        self.idade = idade
        self.peso = peso
        self.altura = altura

    def envelhecer(self):
        self.idade += 1
        if self.idade <21:
            self.crescer(0.5)
    
    def engordar(self):