#!/usr/bin/env bash

################ Debugger em bash ################
###### Exemplo de debug para script grandes ######

#=========== VARIAVEIS
array=( "charlie_brown_jr"
        "sabotage"
        "racionais"
        "stone_sour"
        "hatebreed"
        "foo_figthers"
        "korn"
        "puddle_of_mudd"
        "jesher"
        "limp_biskit"
        "deftones"
        "clautrofobia"
        "payable_on_death" )

#======= CORES
vermelho="\033[31;1m"
tira_cor="\033[m"

#========== CONFIGURAÇÕES
debug="1" # 0 DESLIGADO | 1 LIGADO

#========== FUNÇÕES
function debug_ativado(){
	if [[ "$debug" -eq "1" ]]; then
		echo -e "${vermelho}+++++++++++++++++++DEBUG ATIVADO+++++++++++++++++++"
		set -x
	fi
}

function debug_desativado(){
	if [[ "$debug" -eq "1" ]]; then
		set +x
		echo -e	"+++++++++++++++++++DEBUG DESATIVADO+++++++++++++++++++${tira_cor}"
	fi
}

for i in {1..20}; do
	echo $i
done

debug_ativado
for i in ${array[@]}; do
	echo "I like $i"
done
debug_desativado

for i in {1..20}; do
	echo $i
done