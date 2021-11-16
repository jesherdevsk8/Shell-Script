#!/usr/bin/env bash

# Lynx está instalado?
[ ! -x "$which Lynx" ] && printf "${AMARELO}Precisamos instalar o ${VERDE}Lynx${AMARELO}, por favor, digite sua senha:${SEM_COR}\n" && sudo apt install lynx 1> /dev/null 2>&1 -y

# Sem parâmetros obrigatórios?
[ -z $1 ] && printf "${VERMELHO}[ERRO] - Informe os parâmetros obrigatórios.
Consulte a opção -h.\n" && exit 1 
