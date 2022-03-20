#!/usr/bin/env bash

# ---- CORES
red="\033[31;1m"
green="\033[32;1m"
tira_cor="\033[m"

# ------VARIAVEIS

# ------FUNÇÕES
MATAR(){
  local morre="echo 'kill -9 $1'"
}

# -------VALIDAÇÃO
(($#==0)) && { printf "${red}Por favor, passe um programa...${tira_cor}\n"; exit 1 ; }

# ------- TESTES
[[ ! -x "$(type -P ag)" ]] && sudo apt install silversearcher-ag #ag instalado ??

# ------- EXECUÇÃO
printf "${green}Processos rodando para - ${red}$1 ${tira_cor}\n\n"

while [[ -n "$1" ]]; do
  if [[ -n "$1" ]]; then
	  ps aux | ag "$1" | awk '{print $1, $2,$11}' > matar.log
	  [[ -f matar.log ]] && cat matar.log | ag "$1"
	  printf "\n${green}Execute kill -9 ${red}$(ps aux | ag $1 | awk '{print $2}')\n"
  fi
  shift
done


