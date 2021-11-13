#!/bin/bash
#Vamos usar a opção $( ) e a função
PESSOA=$(whoami)
listar_discos (){
df -Th;
}
	echo "olá $PESSOA. Vamos preparar para listar partições de disco"
	sleep 2 # sleep é um comando para dar uma pausa de 2 segundos, antes de mostrar as partições de disco
echo "--------------------------"
listar_discos
