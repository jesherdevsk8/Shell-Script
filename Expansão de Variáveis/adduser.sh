#!/bin/bash

function usuario(){
	clear

	echo -e "\nCriar usuario\n"

	read -p "Nome completo: " nome
	
	# Se o valor da variavel 'nome' for nulo, atribui 'usuario$RANDOM'
	nome=${nome:-usuario$RANDOM}
	nome=${nome,,}

	echo "Dados da conta a ser criado"
	echo "Nome Completo: " $nome
	
	# Extrai o primeiro nome e armazena em 'USUARIO'
	usuario=${nome%% *}

	echo -e "Usuario: $usuario \n"
	#echo -e "Home: /home/$usuario \n"
  #echo "comando:"
  #echo '$ sudo adduser' $usuario

	return 0
	#FIM
 
}

usuario
