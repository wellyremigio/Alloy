module pessoa

abstract sig Pessoa{}
one sig FelipeB, Romeu extends Pessoa{}
sig Culpado in Pessoa{}

fact{FelipeB not in Culpado}
fact{Romeu in Culpado implies FelipeB in Culpado}

assert conclusion{Romeu not in Culpado}
check conclusion

pred show[]{}
run show