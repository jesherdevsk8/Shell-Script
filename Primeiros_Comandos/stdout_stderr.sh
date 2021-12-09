#!/usr/bin/env bash

read -p "Qual o seu nome? " nome

read -p "Qual a sua idade? " idade

read -p "Qual a sua formação? " formacao
echo

echo -e "Meu nome é $nome \ntenho $idade anos \nsou $formacao "

echo "Qual diretório você quer listar? "
read listar

ls -lha "$listar"
