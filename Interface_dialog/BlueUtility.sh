#!/usr/bin/env bash
#
# BlueUtility.sh - É um programa que faz tal coisa
# Autor: Jesher Minelli | https://github.com/jesherdevsk8/Duracao 
# Criação: 02-04-2022
# Licença: GPLv2
# Versão:
# Histórico:
#      Jesher Minelli: 02-04-2022 [ Adicionado encurtador de URL ]
# Testado em: bash 5.0.17

set -e # se der erro, saia

# ---VARIÁVEIS
readonly nomePrograma='BlueUtility'
readonly versao='0.1'

# ---TESTES
# dialog, curl
for checagem in 'dialog' 'curl'; do
  if ! which "$checagem" &> /dev/null; then # dialog, curl instalados ??
    echo "É necessario ter $checagem instalado"
    exit 1
  fi
done

# ---FUNÇÕES
function meuIP(){
  # variaveis locais
  local servidor='https://ifconfig.me'
  dialog --title "Aguarde..." --infobox "Esta executando....." 5 60
  local qualIP="$(curl -s $servidor)"  
  
  dialog --title "Seu IP Externo" --msgbox "O seu ip é: $qualIP" 6 50
}

function encurtadorUrl(){
  local apiTinyUrl="https://tinyurl.com/api-create.php?url="
  # while [[ -z "$curl" ]]; do
  # done

  local url=$(dialog --stdout --title "Encurtador de URL" --inputbox "Digite a URL" 0 60 )
  dialog --title "Gerando URL..... Aguarde" --sleep 2 --infobox "Encurtando a URL." 5 6 30
  
  local gerandoUrl="$(curl -s ${apiTinyUrl}/$url)"
  dialog --title "Encurtador de URL" - $url -- msgbox "A url encurtada é: $gerandoUrl" 0 60
}

# ---EXECUÇÃO

menu=$(dialog --stdout \
              --backtitle "$nomePrograma - Versão $programaVersao" \
              --title "$nomedoPrograma" \
              --menu "O que você deseja fazer?" \
              0 0 0 \
              1 "Mostrar o ip EXTERNO da sua máquina" \
              2 "Encurtador de URL" \
)

# Menu
case $menu in
  1) meuIP          ;;
  2) encurtadorUrl  ;;
esac
