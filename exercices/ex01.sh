#! /usr/bin/env bash

# Validando se o parâmetro passado é maior que 10

	echo -n "Informe um número: "
read num

if [[ "$num" -gt "10" ]]; then
	echo -e "\nO número "$num" é maior que 10"
	echo -e "Nome: $(basename $0)\nPID: $$"
else
	echo "O número "$num", Não é maior que 10"
	echo "PID: $$"
fi
