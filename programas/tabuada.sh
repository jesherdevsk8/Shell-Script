#! /usr/bin/env bash

# tabuada.sh - É uma tabuada em Shell Script 
# Autor: Jesher Minelli, https://github.com/jesherdevsk8/Shell-Script/blob/master/programas/tabuada.sh 
# $ ./tabuada.sh | bash -x tabuada.sh (modo debug)
# Data: 26/11/2021
#---------------------- Título --------------------------
echo "
---- Tabuada em shell script ----
"
#-------------- Interação com usuário -------------------- 
    echo -n "Informe um número de 0 a 10:  "
read multiplica

echo -e "\n\tTabuada do $multiplica\n"

# ------------------- Execução --------------------------
#Descomente set -x para debugar
#set -x
for i in $(seq 0 10)
do
    resultado=$(($i*$multiplica)); echo -e "\t$i x $multiplica = $resultado"
done
#Descomente set +x para debugar
#set +x
