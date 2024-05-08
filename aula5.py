'''
def operacoes_basicas(a,b):
    soma=a+b
    subtracao=a-b
    multiplicacao=a*b
    if b!=0:
            divisao=a/b
    else:
          print("Divisao não permitida!")

    return soma,subtracao,multiplicacao,divisao 

num1=10
num2=5
resultado=operacoes_basicas(num1,num2)
print("soma: ", resultado[0])
print("subtração: ", resultado[1])
print("multiplicação: ", resultado[2])
print("divisão: ", resultado[3])
'''

'''
def fatorial (a):
    if a==0:
            return 1
    else:     
         fat=1
         for i in range (1, a+1):
             fat *=i
         return fat    
'''

    
'''
x=10 
print("o fatorial de", x, " é: "fatorial(x))
'''
'''
a=input("digite seu nome: ")
b=int(input("digite um numero: "))
c=float(input("digite seu ponto flutuante: "))

soma=c+b

subtracao=c-b 

def soma (b,c): 
    adicao=b+c
    return adicao 


print ("soma: ", soma(b,c))

'''
'''
def fatorial (a):
    if a==0:
                return 1
    else:
         fat=1
         for i in range (1, !+1):
             fat *=i
         return fat    
(x) = int(input("digite um numero inteiro: "))
print ("o fatorial de", x,"é : " , fatorial(x))
                                                                           
'''
'''
nome=input("digite seu nome: ")
altura=float(input("digite sua altura: "))
idade=int(input("digite sua idade: "))
tem_carro=input("voce possui algum carro? (sim/nao): ")

tem_carro=tem_carro.lower()=="sim"

print("nome", nome)
print("altura", altura)
print("idade", idade)
print("tem_carro?", "sim" if tem_carro else "não")

'''
    
def contagem_regressiva():
     numero=int(input("digite um numero inteiro positivo: "))

    if  numero <= 0:
        print("por favor,digite um numero inteiro positivo. ")
        contagem_regressiva()
    else: 
         while numero>=0:
               print(numero)
               numero -= 1

contagem_regressiva()

(-) (+) (*) (/)


def operacoes_basicas(a,b):
    soma=a-b 
    subtracao=a-b
    multiplicacao=a*b
    if b!=0:
            divisao=a/b
    else:
          print("Divisao não permitida!")

    return soma,subtracao,multiplicacao,divisao 

num1=10
num2=5
resultado=operacoes_basicas(num1,num2)
print("+: ", resultado[0])
print("-: ", resultado[1])
print("* ", resultado[2])
print("/: ", resultado[3])