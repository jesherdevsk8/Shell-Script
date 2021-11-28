#! /usr/bin/env bash

# tabuada.sh - É uma tabuada em Shell Script
#
# Repositório:  https://github.com/jesherdevsk8/Shell-Script/blob/master/programas/tabuada.sh
# Autor:        Jesher Minelli
#
# Execução: 
#	$ ./tabuada.sh
#
#---------------------- Título --------------------------
echo "
---- Tabuada em shell script ----
"
#-------------- Interação com usuário -------------------- 
    echo -n "Informe um número de 0 a 10:  "
read multiplica

echo -e "\n\tTabuada do $multiplica\n"

# ------------------- Execução --------------------------
for i in $(seq 0 10)
do
    resultado=$(($i*$multiplica)); echo -e "\t$i x $multiplica = $resultado"
done
