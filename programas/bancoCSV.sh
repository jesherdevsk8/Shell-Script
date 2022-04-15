#!/usr/bin/env bash
#
# lista.sh - É UM PROGRAMA DE BANCO DE DADOS SIMPLES PARA ESTUDO
# Autor: Jesher Minelli Alves <jesherdevsk8@gmail.com>
# Licença: MIT
#
# ------------------ VARIÁVEIS
banco_de_dados="banco-de-dados.txt"

# ----CORES
red="\033[31;1m"
unset="\033[m"

# ------------------- TESTES
[[ ! -e "$banco_de_dados" ]] && > "$banco_de_dados"
(($UID==0)) && { echo "Root nãoo!!!!"; exit 1 ; }

# -------------------FUNÇÕES
function adicionar(){
lista=("Nome" "DDD" "Telefone")
i=1
	for dados in "${lista[@]}"; do
		while [[ -z "${dados[i]}" ]]; do
			read -p "${dados}: " dados[$i]
		done
		((i++))
	done
# Enviando para o banco de dados
local ID=$(($(wc -l < "$banco_de_dados")+1))
echo "${ID}:${dados[1]^}:${dados[2]}:${dados[3]}" >> ${banco_de_dados}
}

function valide(){
	echo -e "${red}Valie o -a|--adicionar, para iniciar o programa${unset}" && exit 1
}

# ------------------EXECUÇÃO

case $1 in
	-a|--adicionar) adicionar 	;;
	 *) 			valide 		;;
esac
