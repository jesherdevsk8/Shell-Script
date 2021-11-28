#!/usr/bin/env bash
#
# calculadora.sh - Calculadora com flags
#
# site:		https://github.com/jesherdevsk8/Shell-Script/blob/master/exercices/calculadora.sh
# Autor: 	Jesher Minelli Alves
#
# ----------------------------------------------------------------------------- #
# Este programa irá auxilia-lo com calculos básicos
#
# Exemplo:
#	$ ./calculadora.sh -m
#	Com este parametro -m faz calculos de multíplicação
# ----------------------------------------------------------------------------- #
# Histórico
#	v1.0 27/11/2021, Jesher:
#	- Adicionado parâmetros -h, -m, -d, -s, -a
# ----------------------------------------------------------------------------- #
# Testado em:
#	Versão 5.0.17
# -------------------------------- VARIÁVEIS ---------------------------------- #
msg="
  $(basename $0) - [OPÇÕES]
  	
  	-h - Menu de ajuda
  	-m - Multiplicar
  	-d - dividir
  	-s - Subtração
  	-a - Adição
"

versao="v1.0"
# ---------------------------------- EXECUÇÃO --------------------------------- #
while test -n "S1"
do
  case "$1" in
    -v) echo "$versao" && exit 0
    	;;
    
    -h) 
    	echo "$msg" && exit 0
    	;;    	
    -m) 
    	echo "Informe um número: " 
    	read num01
    	echo "Informe outro número: "
    	read num02
    	result=$(($num01 * $num02))
    	echo "$num01 x $num02 = $result" && exit 0
    	;;
    -d)
    	echo "Informe o dividendo: " 
    	read num01
    	echo "Informe o divisor: "
    	read num02
    		if [[ $num01 -eq 0 ]]; then
    		  echo "Não existe divisão por zero"
    		elif [[ $num02 -eq 0 ]]; then
    		  echo "-- Não existe divisão por zero --"
    		else 
    		  result=$(($num01 / $num02))
    		  echo "$num01 ÷ $num02 = $result" && exit 0
    		fi    	
    	;;
    -s)
    	echo "Informe um número: " 
    	read num01
    	echo "Informe outro número: "
    	read num02
    	result=$(($num01 - $num02))
    	echo "$num01 - $num02 = $result" && exit 0
    	;;
    -a)
    	echo "Informe um número: " 
    	read num01
    	echo "Informe outro número: "
    	read num02
    	result=$(($num01 + $num02))
    	echo "$num01 + $num02 = $result" && exit 0
    	;;
    	
    *) echo "Opção inválida, valie o -h" && exit 1
    	;;
  esac
done
