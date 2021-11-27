#! /usr/bin/env bash

    echo -n "Informe um valor: "
read valor

for (( i = 0; i <= valor; i++ )); do
    
    if [[ $(($i%2)) -eq 0 ]]; then
        echo "O número $i é divisível por 2"
    fi
done