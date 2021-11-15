#! /usr/bin/env bash

#Aqui vamos comparar a rapidez de compilação da linguagem C e do bash, com os comandos time seq
# o comando seq é um comando escrito em C

#  execute este comando em C no teu terminal e compare
time seq 1 1000
echo -e "\nExecutando comando em C..............compare os segundos\n"
sleep 5
echo -e "Agora o script irá executar o comando em bash\n"
sleep 3
# execute este comando em bash no teu terminal e compare
time for i in {1..1000}; do echo "$i"; done

# se preferir pode executar um comando de cada vez em seu console
