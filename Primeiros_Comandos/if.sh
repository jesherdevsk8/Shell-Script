#!/usr/bin/env bash

#Aqui vamos testar varias formas de usar o comando if

#A comparação '=' ou '!=', é uma condicional de comparação somente para string, no shell script
#ex: VAR = VAR2 ou VAR != VAR2

#Pedindo ao usuário um comando de entrada

	echo -n "Informe uma string: "
read VAR
	echo -n "Informe outra string: "
read VAR2

# Caso queira testar sem entrada de usuário, descomente as variáveis abaixo
#VAR=""
#VAR2=""

if [[ "$VAR" = "$VAR2" ]]; then
	echo "São iguais."
else [[ "$VAR" != "$VAR2" ]];
	echo "Não são iguais."
fi

if [[ "$VAR" = "$VAR2" ]]
then	
	echo "São iguais."
else [[ "$VAR" != "$VAR2" ]]
	echo "Não são iguais."
fi

if test "$VAR" = "$VAR2"
then
	echo "São iguais."
else test "$VAR" != "$VAR2"
	echo "Não são iguais."
fi

if [ "$VAR" = "$VAR2" ]
then
	echo "São iguais."
else [ "$VAR" != "$VAR2" ]
	echo "Não são iguais."
fi

[ "$VAR" = "$VAR2" ] && echo "São iguais."

# Usando o || retorna verdadeiro somente se a variavel VAR ou VAR2 estiver com algum valor
[ "$VAR" = "$VAR2" ] || echo "Não são iguais."
