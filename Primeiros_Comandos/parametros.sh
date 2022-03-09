#!/usr/bin/env bash

red="\033[31;1m"
green="\033[32;1m"
tinha_cor="\033[m"

(($#==0)) && { echo -e "${red}Necessita nome do programa...${tira_cor}"; exit 1 ; }

while [[ -n "$1" ]]; do
	if type -P "$1" >/dev/null; then
		echo -e "${green}O programa $1 está instalado..${tira_cor}"
	else
		echo -e "${red}O programa $1 não está instalado${tira_cor}"
	fi
	shift
done
