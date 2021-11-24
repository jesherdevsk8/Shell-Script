#!/usr/bin/env bash
#
# listaUsuarios.sh - Extrai usuários do /etc/passwd
#
# Site:       https://github.com/jesherdevsk8/Shell-Script
# Autor:      Jesher Minelli Alves
# Manutenção: Jesher Minelli Alves
# ------------------------------------------------------------------------ #
#  Irá extrair usuários do /etc/passwd, havendo a possibilidade de colocar
# em maiúsculo e em ordem alfabética.#
#  Exemplos:
#      $ ./listaUsuarios.sh
#      Neste exemplo Abrirá um Menu de opções
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 23/11/2021, Jesher:
#       - Adicionado menu de opções
# ------------------------------------------------------------------------ #
# Testado em:
#   versão 5.0.17
# ------------------------------------------------------------------------ #
# ------------------------------ Variáveis ------------------------------- #
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"

# Aqui vamos apresentar um menu na tela
TELA="
  $(basename $0) - [OPÇÕES]
  
     v - Versão
     o - Ordenar a saída
     s - Sair
"
VERSAO="v1.0"
# ------------------------------------------------------------------------ #


# ------------------------------ Execução -------------------------------- #
tecla=""

echo -e "$TELA \n"

clear
echo "$TELA"
while [[ "$TELA" != "s" ]]; do	
# '-p' Exibe a mensagem 'Opção' no prompt de entrada.
# 'n1' Lê o caractere único e armazzena em 'OPCAO'.
read -n1 -p 'Insira uma Opção: ' OPCAO
	
if [ "$OPCAO" = "" ];then
   echo -e "OPÇÃO INVALIDA - INSIRA UMA OPÇÃO DO MENU"
fi
	if [ "$OPCAO" = "v" ]; then
	   echo -e "\nVersão: $VERSAO"
	fi
		if [ "$OPCAO" = "o" ]; then
		   echo -e "\n$USUARIOS" | sort | less
		   echo
		fi
			if [ "$OPCAO" = "s" ]; then
			   echo
			   exit
			fi
done
# ------------------------------------------------------------------------ #
