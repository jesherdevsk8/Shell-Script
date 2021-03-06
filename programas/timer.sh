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
    num=$i
    min=0
    hour=0
    day=0
    if((num>59));then
      ((sec=num%60))
      ((num=num/60))
      if((num>59));then
        ((min=num%60))
        ((num=num/60))
        if((num>23));then
          ((hour=num%24))
          ((day=num/24))
        else
          ((hour=num))
        fi
      else
        ((min=num))
      fi
    else
      ((sec=num))
    fi
    # echo -ne ${cyan}"\rContando .... ${day}:${hour}:${min}:${sec}"; sleep 1
    echo -ne "\r                                \r"
    printf ${cyan}"Contando... %02d:%02d:%02d:%02d" ${day} ${hour} ${min} ${sec}; sleep 1
    if [[ $i -eq 120 ]];then
      echo -ne ${red}"\n-- ACABOU SEU TEMPO --"
      echo -ne ${red}"\n$(date +"%a %e %h %Y %H:%M:%S")\n"
    fi
  done
}

cinco() {
  for (( i = 1; i <= 300; i++ )); do
    num=$i
    min=0
    hour=0
    day=0
    if((num>59));then
      ((sec=num%60))
      ((num=num/60))
      if((num>59));then
        ((min=num%60))
        ((num=num/60))
        if((num>23));then
          ((hour=num%24))
          ((day=num/24))
        else
          ((hour=num))
        fi
      else
        ((min=num))
      fi
    else
      ((sec=num))
    fi
    # echo -ne ${cyan}"\rContando .... ${day}:${hour}:${min}:${sec}"; sleep 1
    echo -ne "\r                                \r"
    printf ${cyan}"Contando... %02d:%02d:%02d:%02d" ${day} ${hour} ${min} ${sec}; sleep 1
    if [[ $i -eq 300 ]];then
      echo -ne ${red}"\n-- ACABOU SEU TEMPO --"
      echo -ne ${red}"\n$(date +"%a %e %h %Y %H:%M:%S")\n"
    fi
  done
}

dez() {
  for (( i = 1; i <= 600; i++ )); do
    num=$i
    min=0
    hour=0
    day=0
    if((num>59));then
      ((sec=num%60))
      ((num=num/60))
      if((num>59));then
        ((min=num%60))
        ((num=num/60))
        if((num>23));then
          ((hour=num%24))
          ((day=num/24))
        else
          ((hour=num))
        fi
      else
        ((min=num))
      fi
    else
      ((sec=num))
    fi
    # echo -ne ${cyan}"\rContando .... ${day}:${hour}:${min}:${sec}"; sleep 1
    echo -ne "\r                                \r"
    printf ${cyan}"Contando... %02d:%02d:%02d:%02d" ${day} ${hour} ${min} ${sec}; sleep 1
    if [[ $i -eq 600 ]];then
      echo -ne ${red}"\n-- ACABOU SEU TEMPO --"
      echo -ne ${red}"\n$(date +"%a %e %h %Y %H:%M:%S")\n"
    fi
  done
}

teste() {
  for (( i = 1; i <= 10; i++ )); do
    num=$i
    min=0
    hour=0
    day=0
    if((num>59));then
      ((sec=num%60))
      ((num=num/60))
      if((num>59));then
        ((min=num%60))
        ((num=num/60))
        if((num>23));then
          ((hour=num%24))
          ((day=num/24))
        else
          ((hour=num))
        fi
      else
        ((min=num))
      fi
    else
      ((sec=num))
    fi
    # echo -ne ${cyan}"\rContando .... ${day}:${hour}:${min}:${sec}"; sleep 1
    echo -ne "\r                                \r"
    printf ${cyan}"Contando... %02d:%02d:%02d:%02d" ${day} ${hour} ${min} ${sec}; sleep 1
    if [[ $i -eq 10 ]];then
      echo -ne ${red}"\n-- ACABOU SEU TEMPO --"
      echo -ne ${red}"\n$(date +"%a %e %h %Y %H:%M:%S")\n"
    fi
  done
}

# -- Interação com usuário
USAGE() {
cat <<EOF
[ $(basename $0) ] - Programe para desligar

  1) - 2 minutos
  2) - 5 minutos
  3) - 10 minutos
  4) - 10 segundos (Modo teste)

EOF
}; echo -ne ${green}; USAGE

echo -n "Informe a Opção: " 
read opcao

case "$opcao" in
  1) dois  ;;
  2) cinco ;;
  3) dez   ;;
  4) teste ;;
esac


