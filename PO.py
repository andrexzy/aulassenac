class conta:
    def __init__(self,nome_titular,numero_conta,saldo_inicial):
        self.nome_titular=nome_titular
        self.numero_conta=numero_conta
        self.saldo=saldo_inicial

    def depositar(self,valor):
        if valor < 0:
            print("valor de deposito invalido!")
        else:
             self.saldo+=valor

    def sacar(self,valor):
        if self.saldo >=valor:
            self.saldo-=valor
        else:
             print ("saldo insuficiente!")

    def  consultar_saldo(self):
        return self.saldo
    
    def transferir(self,valor,outra_conta): 
        