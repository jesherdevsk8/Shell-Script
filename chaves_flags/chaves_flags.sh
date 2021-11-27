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
#	- Adicionado -m
#	- Adicionado 2 flags
#   v1.3 26/11/2021, Jesher:
#	- Adicionado while com shift e teste de variável
#	- Adicionado 2 flags
# ------------------------------------------------------------------------ #
# Testado em:
#   versão 5.0.17
# ------------------------------------------------------------------------ #
# ------------------------------ Variáveis ------------------------------- #
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
  $(basename $0) - [OPÇÕES]
  
     Exemplos: $0 -h & $0 -v 
     	  & $0 -o
     
     -h - Menu de ajuda
     -v - Versão
     -s - Ordenar a saída
     -m - Coloca em maiúsculo    
"
VERSAO="v1.3"
CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0
# ------------------------------------------------------------------------ #

# ------------------------------ Execução -------------------------------- #
while test -n "$1"
do
   case "$1" in
   -h) echo "$MENSAGEM_USO" && exit 0               ;;
   -v) echo "$VERSAO" && exit 0                     ;;
   -s) CHAVE_ORDENA=1				    ;;
   -m) CHAVE_MAIUSCULO=1			    ;;
    *) echo "Opção inválida, valie o -h" && exit 1  ;;
   esac
   shift
done

[ $CHAVE_ORDENA -eq 1 ]    && USUARIOS=$(echo "$USUARIOS" | sort | less)
[ $CHAVE_MAIUSCULO -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | tr [a-z] [A-Z] | less)

echo "$USUARIOS"
# ------------------------------------------------------------------------ #
