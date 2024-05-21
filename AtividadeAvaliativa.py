'''
def classificar_idades(lista_de_idades):
    # Lista para armazenar as classificações
    classificacoes = []

    # Itera sobre cada idade na lista de idades
    for idade in lista_de_idades:
        if idade >= 0 and idade <= 12:
            classificacoes.append("Criança")
        elif idade >= 13 and idade <= 17:
            classificacoes.append("Adolescente")
        elif idade >= 18 and idade <= 59:
            classificacoes.append("Adulto")
        elif idade >= 60:
            classificacoes.append("Idoso")
        else:
            classificacoes.append("Idade inválida") # Caso a idade seja negativa ou não seja um número válido

    return classificacoes

# Exemplo de uso
idades = [3, 14, 25, 70, 8, 16, 40, 61]
classificacoes = classificar_idades(idades)
print(classificacoes)

'''




def classificar_faixa_etaria(idade):
    
    
        if idade <0:
            return "idade invalida"

    
            

        elif idade <=12:
            return "é uma criança"
         
        elif idade <=17:  
              return "é um adolescente"
        
        elif idade <=59:
            
            return "é um adulto"

        else:
    
            return "é um idoso"

idade=int(input("digite sua idade: "))



faixa_etaria=classificar_faixa_etaria(idade)


print(f"voce é classificado como: {faixa_etaria}")

        

            

        
    
 

