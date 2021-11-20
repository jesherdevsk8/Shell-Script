#!/usr/bin/env bash
#Fazendo o script ler as informações digitadas pelo usuário e armazenar em uma variável

# set -x <- para debugar
	echo -n "Olá. Como você se Chama? "
read PESSOA
	echo -e "Tudo bem $PESSOA?\n"
	sleep 1
	
	echo -n "Qual sua idade? "
read IDADE
	echo "$IDADE anos"
	
#Comando para debugar
#set -x para debugar o programa, ou bash -x nomeScript.sh no terminal
