#!/usr/bin/env bash

NOME="Vamos

Calcular

25 x 2 é"

echo "$NOME"

NUMERO_01=25
NUMERO_02=2

TOTAL=$(($NUMERO_01*NUMERO_02))
#Para retornar um número ou uma conta, coloque '(())'

echo "=$TOTAL"

echo -e "\nListando /etc/passwd meu usuário e o shell padrão"
SAIDA_CAT="$(cat /etc/passwd | grep boyah)"
#Para retornar string coloque entre '()'

echo "$SAIDA_CAT"

echo "---------------------------------------"

#exemplo de parâmetro é quando vc executa o comando ls -l ou ls -a ou ls -h
echo "Exemplo de parametro para executar e testar ./variaveis.sh -a -b"
echo "Parâmetro 1: $1"
echo "Parâmetro 2: $2"

echo "Todos os parâmetros: $*"

echo "Quantos parâmetros? $#"

echo "Saída do último comando: $?"

echo "PID: $$"

echo "Nome do script = $0"
