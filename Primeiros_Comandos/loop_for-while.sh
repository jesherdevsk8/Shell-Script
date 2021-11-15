#!/usr/bin/env bash

#Neste programinha vamos ver várias formas de utilizar o operador for
echo "--- For 1"
for (( i = 0; i <= 10; i++ )); do
	echo $i
done

echo "--- For 2 (seq)"
for i in $(seq 0 10)
do
	echo $i
done

echo "--- For 3 (array)"
Frutas=(
'Laranja'
'Ameixa'
'Abacaxi'
'melancia'
'goiaba'
)

for i in "${Frutas[@]}"; do
	echo "$i"
done

# Condicional de comparação númerica em shell bash
# expr1 -eq expr2 - Retorna true se os valores são iguais
# expr1 -ne expr2 - Retorna true se os valores não são iguais
# expr1 -gt expr2 - Retorna true se o expr1 é maior que o expr2
# expr1 -ge expr2 - Retorna true se o expr1 é maior ou igual ao expr2
# expr1 -lt expr2 - Retorna true se o expr1 é menor que o expr2 -lt=less than
# expr1 -le expr2 - Retorna trues se o expr1 é menor ou igual ao expr2
# ! expr1 - Nega o resultado da expressão (se for true vira false e vice-versa)

echo "--- while"
contador=0
while [[ $contador -lt ${#Frutas[@]} ]]; do
	echo $contador
	contador=$(($contador+1))
done
