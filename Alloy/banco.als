module bank

sig Banco{
	contas: set Conta
}

sig Conta{
}

sig Poupanca extends Conta{}
sig ContaCorrente extends Conta{}

pred show(){}
run show for 5
