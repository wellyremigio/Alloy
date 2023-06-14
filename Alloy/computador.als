module computador

abstract sig Computador{} //Criando um conjunto abstrato
one sig Lenovo, Dell, Apple, Acer extends Computador{} // Criando subconj unitarios
sig Rapido, BoaMemoria, Compacto in Computador{} // Criando as caracteristicas

//Criando predicados
pred rapido[c: Computador]{
	c in Rapido
}

pred boaMemoria[c: Computador]{
	c in BoaMemoria
}

pred compacto[c: Computador]{
	c in Compacto
}

pred ideal[c: Computador]{
	//c in Rapido and c in BoaMemoria and c in Compacto
	rapido[c] and boaMemoria[c] and compacto[c]
}

//Adicionando as formulas consideradas verdadeiras
fact{
	one c: Computador | ideal[c] //tem que ser um elemento em computador que seja ideal
	all c: Computador | rapido[c] or boaMemoria[c] or compacto[c] //Para todo c, ele vai ter pelo menos uma das caracteristicas	
	#Rapido = 3 and #BoaMemoria = 2 and #Compacto = 1
	boaMemoria[Dell] <=> boaMemoria[Lenovo]
	rapido[Dell] <=> rapido[Apple]
	rapido[Acer] implies not rapido[Apple]
	rapido[Apple] implies not rapido[Acer]
}

run{}
