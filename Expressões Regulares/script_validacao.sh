#!/bin/bash

# Script com validações de Tel,E-mail,CEP,IP,Data...
####################### VALIDAR TELEFONE no formato: (99)9999-9999 ################################################
echo 'Informe o número de Telefone.Formato: (99)9999-9999';
read TELEFONE
echo $TELEFONE | egrep '^[(][0-9]{2}[)][0-9]{4}+-[0-9]{4}$' &amp;&amp; echo -e '\033[01;32m Número válido! \033[0m' || echo -e '\033[01;31m NÃO é válido esse número.\033[0m'
######################### VALIDAR IP ##############################################
echo 'Informe o número de IP';
read IP
echo $IP | egrep '^[0-9]{1,3}[.]{1}[0-9]{1,3}[.]{1}[0-9]{1,3}[.]{1}[0-9]{1,3}$' &amp;&amp; echo -e '\033[01;32m IP válido! \033[0m' || echo -e '\033[01;31m NÃO é válido esse IP.\033[0m'
######################### VALIDAR CEP ##############################################
echo 'Informe o CEP';
read CEP
echo $CEP | egrep '^[0-9]{5}[-][0-9]{3}$' &amp;&amp; echo -e '\033[01;32m Número válido! \033[0m' || echo -e '\033[01;31m NÃO é válido esse número.\033[0m'
######################### VALIDAR DATA formato dd/mm/aaaa ##############################################
echo 'Informe a Data.Formato dd/mm/aaaa';
read DATA
echo $DATA | egrep '^[0-3]{1}[0-9]{1}[/][0-1]{1}[0-9]{1}[/][0-9]{4}$' &amp;&amp; echo -e '\033[01;32m Data válida! \033[0m' || echo -e '\033[01;31m NÃO é válida essa Data.\033[0m'
######################### VALIDAR E-MAIL ##############################################
echo 'Informe o E-mail';
read EMAIL
echo $EMAIL | egrep '^([a-zA-Z0-9_-.])+@[0-9a-zA-Z.-]+\.[a-z]{2,3}$' &amp;&amp; echo -e '\033[01;32m E-mail válido! \033[0m' || echo -e '\033[01;31m NÃO é válido esse E-mail.\033[0m'
