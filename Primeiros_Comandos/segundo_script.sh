#! /bin/bash

#Aprendendo Variáveis

PESSOA=`whoami`
	echo "Olá $PESSOA"
echo
# Uma maneira melhor para nao confundir ' '(aspas simples) com ` `(crase)
PESSOA2=$(whoami)
	echo "Olá $PESSOA2"
echo
PESSOA3='Priscilla Faria Ferreira'
	echo "Olá $PESSOA3. EU TE AMO"
