#!/bin/bash
# ----------------------------------------------------------------------------
# Autor: Marcos Oliveira, http://terminalroot.com.br
# Função para gerar senhas alfanuméricas com Shell Scripiting
# ./gerarsenha.sh
# Desde: Sáb Fev 16 23:05:55 BRT 2013
# Versão: 1
# Licença: GPL
# ----------------------------------------------------------------------------
gerarsenha(){
 # definimos as variaveis que gerarão a senha
 letras='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ' # todas as letras minúsculas e Maiúsculas
 numeros='0123456789' # todos os números
 lista="$letras$numeros" # juntamos todas as letras mM e todos os números
 # numero de caracteres da senha
 max=10
 # conta o número de caracteres da string lista
 tamanho=${#lista}
 # criamos um loop do zero ao max
 for ((i = 0; i < $max; i++ ))
  do
   # colocamos o +1 para ser diferente de zero, para usar cut tem de ser no mínimo 1
   ordem=$((RANDOM % $tamanho + 1))
   # acumulamos o caracter randomico escolhido pelo cut na variável senha
   senha=$(echo $lista | cut -c "$ordem")
   # imprimimos a variavel senha 10 vezes(max) na mesma linha -n
   echo -n $senha
  done
 # pulamos uma linha final
 echo
}

#chamamos a função
gerarsenha