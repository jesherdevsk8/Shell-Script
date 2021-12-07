#!/usr/bin/env bash

# Autor: Jesher Minelli Alves, https://github.com/jesherdevsk8/Shell-Script/blob/master/Express%C3%B5es%20Regulares/Extraindo_Dados/extraindo_letra.sh
# ./extraindo_letra.sh - É um programa que extrai letras de músicas do site https://www.letras.mus.br/ 
# Data: 07 dez 2021
# Versão: 1.0
# Licença: GPL

# ------------- FUNÇÃO

EXTRAIR_LETRA() {
  lynx -source https://www.letras.mus.br/"$artista"/"$musica"/ | grep premium | sed "s/<[^>]*>/\n/g;s/Adicionar.*Criar//g" > letra.txt
}

# ------------- TESTE

[ ! -x "$(which lynx)" ] && sudo apt install lynx -y # Lynx Instalado ?


# ------------- INTERAÇÃO COM USÚARIO

echo -n "Informe o nome da banda ou cantor: "
read artista 

echo -n "Informe o nome da música: "
read musica

# ------------- EXECUÇÃO

if [[ ! -z "$artista" && ! -z "$musica" ]];then
  EXTRAIR_LETRA
else
  echo "Não encontrado"  
fi

sed -i "/^\s*$/d" letra.txt # apagando linhas vazias





