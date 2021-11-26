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

if [[ "$opcao" -eq "1" ]]; then
   apt update
elif [[ "$opcao" -eq "2" ]]; then
   echo "Qual programa você deseja instalar?"
   read installar
   apt install "$installar"
elif [[ "$opcao" -eq "3" ]]; then
   echo "Qual programa você deseja remover?"
   read remover
   apt remove "$remover"
else 
   echo "OPÇÃO INVÁLIDA."
fi
