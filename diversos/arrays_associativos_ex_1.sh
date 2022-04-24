#!/bin/bash

# Declarando e inicializando um array associativo
# com três valores
declare -A usernames=([user1]="José Caldeira"
					  [user2]="João Marques"
					  [user3]="Mariana Ferreira")

# Escrever o valor guardado em cada chave do array
printf '%s\n' "O nome completo do utilizador 'user1' é: ${usernames[user1]}"
printf '%s\n' "O nome completo do utilizador 'user2' é: ${usernames[user2]}"
printf '%s\n' "O nome completo do utilizador 'user3' é: ${usernames[user3]}"


# Escrever uma linha vazia
echo

# Declarando o array associativo
declare -A usernames

# Adicionando o utilizador user1 ao array
usernames[user1]="José Caldeira"

# Escrever o valor guardado com a chave user1
printf '%s\n' "O nome completo do utilizador 'user1' é: ${usernames[user1]}"

# Adicionando o utilizador user2 ao array
usernames[user2]="João Marques"

# Escrever o valor guardado com a chave user2
printf '%s\n' "O nome completo do utilizador 'user2' é: ${usernames[user2]}"

# Adicionando o utilizador user3 ao array
usernames[user3]="Mariana Ferreira"

# Escrever o valor guardado com a chave user3
printf '%s\n' "O nome completo do utilizador 'user3' é: ${usernames[user3]}"

# Escrever uma linha vazia
echo

# Escrever todos os valores existente no array
printf '%s\n' "O valores do array são: ${usernames[@]}"
printf '%s\n' "O valores do array são: ${usernames[*]}"

# Escrever uma linha vazia
echo

# Escrever todos as chaves existente no array
printf '%s\n' "O array contem as seguintes chaves: ${!usernames[@]}"

# Escrever uma linha vazia
echo

# Escrever o número de pares chave/valor que existem no array
printf '%s\n' "O número de pares chave/valore é: ${#usernames[@]}"
