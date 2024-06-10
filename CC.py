class conta:

    
    def __init__(self):
        self.saldo = 0
        self.depositos = []
        self.saques = []
        self.saque_diario = 0
           

   
    def extrato(self):
        print("----- Extrato bancário -----")
        print()
        print("Depósitos realizados:")
        for deposito in self.depositos:
            print("Depósito: R$", format(deposito, ".2f"))
        print("Saques realizados:")
        for saque in self.saques:
            print("Saque: R$", format(saque, ".2f"))
        print("Saldo atual: R$", format(self.saldo, ".2f"))
        print()

    def deposita(self, valor):
        self.__saldo += valor

    def pode_sacar(self,valor_a_sacar):
         valor_disponivel_a_sacar=self.__saldo= self.__limite
         return valor_a_sacar <= valor_disponivel_a_sacar
    
    def sacar(self, valor):
        if self.saque_diario < 3:
            if valor <= 500:
                if self.saldo >= valor:
                    self.saldo -= valor
                    self.saques.append(valor)
                    self.saque_diario += 1
                    print("Saque realizado com sucesso.")
                else:
                    print("Saldo insuficiente para realizar o saque.")
            else:
                print("Valor inválido para saque.")
        else:
            print("Limite de saques diários atingido.") 
    
    def transfere(self,valor,destino):
         self.saca(valor)
         destino.deposita(valor)

    
while True:
    operacao = input("Digite a operação desejada (depósito, saque, extrato, sair): ")

    if operacao.lower() == "depósito":
        valor = float(input("Digite o valor do depósito: "))
        conta.depositar(valor)
    elif operacao.lower() == "saque":
        valor = float(input("Digite o valor do saque: "))
        
    elif operacao.lower() == "extrato":
        print()
        conta.extrato()
    elif operacao.lower() == "sair":
        print("Programa finalizado.")
        break
    else:
        print("Operação inválida. Tente novamente.")
'''

class ContaBancaria:
    def __init__(self):
        self.saldo = 0
        self.depositos = []
        self.saques = []
        self.saque_diario = 0

    def depositar(self, valor):
        if valor > 0:
            self.saldo += valor
            self.depositos.append(valor)
            print("Depósito realizado com sucesso.")
        else:
            print("Valor inválido para depósito.")

    def sacar(self, valor):
        if self.saque_diario < 3:
            if valor <= 500:
                if self.saldo >= valor:
                    self.saldo -= valor
                    self.saques.append(valor)
                    self.saque_diario += 1
                    print("Saque realizado com sucesso.")
                else:
                    print("Saldo insuficiente para realizar o saque.")
            else:
                print("Valor inválido para saque.")
        else:
            print("Limite de saques diários atingido.")        

    def extrato(self):
        print("----- Extrato bancário -----")
        print()
        print("Depósitos realizados:")
        for deposito in self.depositos:
            print("Depósito: R$", format(deposito, ".2f"))
        print("Saques realizados:")
        for saque in self.saques:
            print("Saque: R$", format(saque, ".2f"))
        print("Saldo atual: R$", format(self.saldo, ".2f"))
        print()


conta = ContaBancaria()

while True:
    operacao = input("Digite a operação desejada (depósito, saque, extrato, sair): ")

    if operacao.lower() == "depósito":
        valor = float(input("Digite o valor do depósito: "))
        conta.depositar(valor)
    elif operacao.lower() == "saque":
        valor = float(input("Digite o valor do saque: "))
        conta.sacar(valor)
    elif operacao.lower() == "extrato":
        print()
        conta.extrato()
    elif operacao.lower() == "sair":
        print("Programa finalizado.")
        break
    else:
        print("Operação inválida. Tente novamente.")

'''
