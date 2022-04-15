# Expansão de Variáveis

 - Para ativar o modo de expansão é necessário utilizar ‘${}’ com o identificador da variável.

```
Exemplo: ${var..}
```

- Imprimindo o total de caracteres

```
msg="Aprendendo Shell Script"

echo ${#msg}
```

- Imprimir **Não tem nada aqui** se a variável **msg** estiver vazia. 

```
msg=""

echo ${msg:-Não tem nada aqui}
```

- Imprimindo **Tem alguma coisa** se a variável **msg** não estiver vazia.

```
msg=”shell script”

echo ${msg:+Tem alguma coisa}
```

-  Imprimindo e armazenando a expressão **Novo valor** na variável **msg**, caso seu valor seja nulo.

```
msg=””

echo ${msg:=Novo valor}
```

- Imprime a mensagem de erro **Valor não encontrado** se o valor da variável **msg** for nulo.

```
msg=""

echo ${msg:?Valor não encontrado.}
```

- Trocando a primeira palavra **Shell** por **Java**

```
msg="Eu Amo Aprender Ruby"

echo ${msg/Ruby/Shell Script}
```

- Converte todos os caracteres da expressão em maiúsculo.

```
msg="shell é daora"

echo ${msg^^}
```

- Converte o primeiro carácter da expressão em maiúsculo.

```
msg="shell é daora"

echo ${msg^}
```

- Converte todos os caracteres da expressão em minusculo

```
msg="SHELL É DAORA"

echo ${msg,,}
```

- Converte o primeiro carácter da expressão em minusculo

```
msg="SHELL É DAORA"

echo ${msg,}
```





