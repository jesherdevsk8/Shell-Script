#! /usr/bin/env bash

# tabuada.sh - É uma tabuada SIMPLES em Shell Bash 
# Autor: Jesher Minelli, https://github.com/jesherdevsk8/Shell-Script/blob/master/programas/tabuada.sh 
# $ ./tabuada.sh
# Data: 26/11/2021
# Versão: 1.1
#     Jesher Minelli - 28/02/2022: Adicionei condição para não aceitar números maiores que dez
#---------------------- EXECUÇÃO --------------------------
echo "
---- Tabuada em shell script ----
"

    echo -n "Informe um número de 0 a 10:  "
read multiplica

if [[ "$multiplica" -le 10 ]] ;then
  echo -e "\n\tTabuada do $multiplica\n"
    
  for i in $(seq 0 10);do
    resultado=$(($i*$multiplica)); echo -e "\t$i x $multiplica = $resultado"
  done
else
  echo -e "Não válido.. Por favor digite um número menor ou igual a dez\nSaindo......."
fi
