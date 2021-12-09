#!/usr/bin/env bash

VERDE="\033[32;1m"
RED="\033[31;1m"

echo -e "\nQual a linguagem do sistema?"
echo -e "$LANG\n"

echo "Qual o diretorio do usuario logado?"
echo -e "$HOME\n"

echo "Qual o nome do usuario?"
echo -e "$USER\n"

echo -e ${RED} "Listando diretórios que estão no apache"
echo -e ${VERDE} "$(ls -lha /var/www/html)"
