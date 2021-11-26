#!/usr/bin/env bash
#
# Cronometro.sh
# Autor: 	Jesher Minelli Alves
# -------------------------------------------------------------------------- #
#  Exemplo:
#    Iniciar o script
#	$ ./Cronometro.sh
#	$ bash Cronometro.sh
#    Debugar o script
#	$ bash -x Cronometro.sh
# -------------------------------------------------------------------------- #
# Testado em:
#  bash versão 5.0.17
# -------------------------------------------------------------------------- #

contador="0"
# Timer de 5 minutos
# set -x <- comando para debugar
echo "Inicio ------> Restam cinco minutos"
while sleep 1s; do
	[[ "$contador" -eq "300" ]] && echo -e "\tAcabou o tempo" || let contador++
done
