#!/usr/bin/env bash

carros=("Pálio" "Corsa" "Opala" "Chevette" "Mercedes" "BMW")
marca=("Fiat" "Chevrolet" "Volks" "tesla")

printf "\e[31;1mCarros e marcas do array\n"

for lista in "${carros[@]}"; do  
  printf "\e[33;1m$lista\n"
done

for i in "${!marca[@]}";do
  printf "\e[34;1m${marca[$i]}\n"
done


