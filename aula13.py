'''
def soma_impares(lista):
    impares=[num for num  in lista if num % 2 !=0]
    return sum(impares)
    

numeros=(input('digite um {} impar: ')).split()
numeros=[int(num)for num in numeros]

soma=soma_impares(numeros)
    
print ('o resultado da soma é: ',soma)    
'''
'''
def max_lista(lista1):
    maior=lista1(0)
    for xi in lista1:
        if (xi > maior):
            maior=xi
    return maior

a=[]
a=[{},{},{},{},{}]
a.append(4)
print(a)
(int=input("digite numeros em ordem na lsta: "))

maxL=max_lista(lista1)
print(maxL)
'''
lista_numeros=int(input("quantos alunos deseja registrar: "))

media_alunos=[]
media_turma=[]

for i in range(1,lista_numeros+1):
    print(f"aluno{i}: ")
    notas_aluno=[]

    for j in range(1,4):
        nota=float(input(f"insira a nota {j}: "))
        notas_aluno.append(nota)
        media_turma.append(nota)

    media_aluno=sum(notas_aluno)/len(notas_aluno)
    media_alunos.append 
    print("a media do alunio é: ", media_aluno)


