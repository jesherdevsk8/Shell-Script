# Montando uma Expressão Regular

### Instalação:

- **Primeiramente Vamos instalar um navegador web que funcione no terminal**
    - _**No Ubuntu ou derivados, vamos instalar o lynx**_

>     $ sudo apt install lynx -y 

- **Pegando a página para extração de dados**
  - Aqui iremos usar o site _`http://lxer.com/`_
	
>     $ lynx -source http://lxer.com/

### Extraindo: 

- **Após examinar o código fonte da página através do navegador google-chrome com os comandos**

>     $ lynx -source http://lxer.com/ | grep blurb

- **Após extrair os dados das tags _`<div class="blurb">`_ do _`HTML`_ com o comando a cima, enviei para um arquivo titulos.txt com os seguintes comandos** 

> 	  $ lynx -source hhtp://lxer.com/ | grep blurb > titulos.txt

### A partir daqui, montaremos a Expressão Regular
   
- _**Com o comando `tail -n 1` que é um parâmetro para filtrar as dez últimas linhas do arquivo título, o `-n 1` irá contar somente a última linha**_

>     $ tail -n 1 titulos.txt

>     $ tail -n 1 titulos.txt | sed 's/<div.*line">//;s/<\/span.*//'

- **Print do terminal**

![](/home/boyah/Documentos/shell_scripting/Expressões Regulares/print.png)

### Agora vamos testar essa _expressão_ em todo conteúdo do arquivo titulos.txt extraído da página _`hhtp://lxer.com/`_

- **Comando**

>     $ cat titulos.txt | sed 's/<div.*line">//;s/<\/span.*//'

![](/home/boyah/Documentos/shell_scripting/Expressões Regulares/print-2.png)