#! /usr/bin/env bash

# Este é um programinha básico para treinar lógica com menu de opções

if [[ "$USER" != "root" ]]; then
  echo "Necessita de Root"
  exit 1
fi

echo "
1) Atualizar Sistema
2) Instalar Programa
3) Remover Programa
"

read opcao

case "$opcao" in
  1) 
     apt update
     ;;
  2)
     echo "Qual programa deseja instalar?"
     read instalar
     apt install "$instalar"
     ;;
  3) 
     echo "Qual programa deseja remover?"
     read remover
     apt remove "$remover"
     ;;
esac
