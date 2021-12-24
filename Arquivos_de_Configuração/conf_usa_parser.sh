#!/usr/bin/env bash

ARQUIVO_DE_CONFIGURACAO="configuracao.cf"
USAR_CORES=
USAR_MAIUSCULAS=
MSG="Mensagem de teste"

VERDE="\033[32;1m"
VERMELHO="\033[31;1m"

eval $(./parser.sh $ARQUIVO_DE_CONFIGURACAO)

[ "$(echo $CONF_USAR_MAIUSCULAS)" = "1" ] && USAR_MAIUSCULAS=1
[ "$(echo $CONF_USAR_CORES)" = "1" ] && USAR_CORES=1

[ "$USAR_MAIUSCULAS" = "1" ] && MSG="$(echo $MSG | tr a-z A-Z)"
[ "$USAR_CORES" = "1" ] && MSG="$(echo -e ${VERMELHO}$MSG)"

echo -e "$MSG"
