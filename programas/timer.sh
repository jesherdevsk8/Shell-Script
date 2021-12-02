#!/usr/bin/env bash
#
# timer.sh - É um timer em shell script
# Autor: Jesher Minelli Alves, https://github.com/jesherdevsk8/Shell-Script/blob/master/programas/timer.sh
# Execução: $ ./timer.sh
# Data: 01/12/2021
# 
# -- Cores
cyan="\033[36;1m"
red="\033[31;1m"
green="\033[32;1m"

# -- Funções

dois() {
  for (( i = 1; i <= 120; i++ )); do 
      echo -e ${cyan}"Contando _____ $i"; sleep 1
      if [[ $i -eq 300 ]];then
        echo -e ${red}"-- ACABOU SEU TEMPO --"
        echo -e ${red}"$(date)"
      fi
  done
}

cinco() {
  for (( i = 1; i <= 300; i++ )); do 
      echo -e ${cyan}"Contando _____ $i"; sleep 1
      if [[ $i -eq 300 ]];then
        echo -e ${red}"-- ACABOU SEU TEMPO --"
        echo -e ${red}"$(date)"
      fi
  done
}

dez() {
  for (( i = 1; i <= 600; i++ )); do 
      echo -e ${cyan}"Contando _____ $i"; sleep 1
      if [[ $i -eq 600 ]];then
        echo -e ${red}"-- ACABOU SEU TEMPO --"
        echo -e ${red}"$(date)"
      fi
  done
}

teste() {
  for (( i = 1; i <= 10; i++ )); do 
      echo -e ${cyan}"Contando _____ $i"; sleep 1
      if [[ $i -eq 10 ]];then
        echo -e ${red}"-- ACABOU SEU TEMPO --"
        echo -e ${red}"$(date)"
      fi
  done
}

# -- Interação com usuário
echo -e "${green}" "
  1) - 2 minutos
  2) - 5 minutos
  3) - 10 minutos
  4) - 10 segundos (Modo teste)  
"
echo -n "Informe a Opção: " 
read opcao

case "$opcao" in
  1) dois  ;;
  2) cinco ;;
  3) dez   ;;
  4) teste ;;
esac


