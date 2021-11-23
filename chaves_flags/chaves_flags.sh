#!/usr/bin/env bash
#
# listaUsuarios.sh - Extrai usuários do /etc/passwd
#
# Site:       https://github.com/jesherdevsk8/Shell-Script
# Autor:      Mateus Müller
# Manutenção: Jesher Minelli Alves
# ------------------------------------------------------------------------ #
#  Irá extrair usuários do /etc/passwd, havendo a possibilidade de colocar
# em maiúsculo e em ordem alfabética.#
#  Exemplos:
#      $ ./listaUsuarios.sh -s -m
#      Neste exemplo ficará em maiúsculo e em ordem alfabética
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 03/10/2018, Mateus:
#	- Adicionado -h, -v & -s
#   v1.1 23/11/2021, Jesher:
#	- Trocamos if pelo case       
#	- Adicionado basename
#   v1.2 23/11/2021, Jesher:
#	- 
#	-
# ------------------------------------------------------------------------ #
# Testado em:
#   versão 5.0.17
# ------------------------------------------------------------------------ #
# ------------------------------ Variáveis ------------------------------- #
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
  $(basename $0) - [OPÇÕES]
  
     Exemplos $0 -h & $0 -v 
     	  & $0 -o
     
     -h - Menu de ajuda
     -v - Versão
     -s - Ordenar a saída
     -m - Coloca em maiúsculo     
"
VERSAO="v1.2"
CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0
# ------------------------------------------------------------------------ #


# ------------------------------ Execução -------------------------------- #

case "$1" in
   -h) echo "$MENSAGEM_USO" && exit 0            ;;
   -v) echo "$VERSAO" && exit 0                  ;;
   -s) CHAVE_ORDENA=1				 ;;
   -m) CHAVE_MAIUSCULO=1			 ;;
    *) echo "$USUARIOS" | less   		 ;;
esac

[ $CHAVE_ORDENA -eq 1 ] && echo "$USUARIOS" | sort | less
[ $CHAVE_MAIUSCULO -eq 1 ] && echo "$USUARIOS" | tr [a-z] [A-Z] | less

# ------------------------------------------------------------------------ #
