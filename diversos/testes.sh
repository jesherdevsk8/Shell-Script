#!/usr/bin/env bash

#----- CORES
red="\033[31;1m"

#----- TESTES
#[[ "$UID" -eq "0" ]] && { echo "Root? não" ; exit 1 ; }
[ ! "$UID" -eq 0 ] && echo -e ${red}"Por favor execute com sudo" && exit 1 #Root??
