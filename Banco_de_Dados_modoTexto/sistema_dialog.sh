#!/usr/bin/env bash

# Autor: Jesher Minelli Alves, Repo: https://github.com/jesherdevsk8/Shell-Script/blob/master/Banco_de_Dados_modoTexto/sistema_dialog.sh
# Sistema_Usuario.sh - É um programa que cria uma base de dados, lista, insere e deleta 
# Data: 24 dez 2021
# Versão: 1.0.1 (26 dez 2021)
# Licença: GPLv3+: GNU GPL versão 3 ou posterior <http://gnu.org/licenses/gpl.html>.
# Testado em: GNU bash, versão 5.0.17
# Observação: [ Se trocar algo no cabeçalho, torque também na variável "VERSION" ]

# ------------- VARIÁVEIS
ARQUIVO_BANCO="banco_de_dados.txt"
SEP=:
TEMP=temp.$$
VERDE="\033[32;1m"
VERMELHO="\033[31;1m"
VERSION="Autor: Jesher Minelli Alves, Repo: https://github.com/jesherdevsk8/Shell-Script/blob/master/Banco_de_Dados_modoTexto/sistema_dialog.sh
Sistema_Usuario.sh - É um programa que cria uma base de dados, lista, insere e deleta.
Uso: ./Sistema_Usuario.sh
Data: 24 dez 2021
Versão: 1.2 (26 dez 2021)
Licença: GPLv3+: GNU GPL versão 3 ou posterior <http://gnu.org/licenses/gpl.html>.
Testado em: GNU bash, versão 5.0.17
"

MENU="
  $(basename $0) - [OPÇÕES]
  
     -l - Listar usuários
     -i - Inserir usuário
     -d - Deletar usuário
     -v - Versão do Programa
     -h - Menu de ajuda
     
     Exemplo:
        ./Sistema_Usuario.sh -h
"

AJUDA="
  $(basename $0) - [AJUDA]
     -l - listar
     -i - inserir
     -d - deletar + [id]
     
     Exemplo de uso:
       ./Sistema_Usuario.sh -i <NADA> [ IRÁ ABRIR INTERFACE GRÁFICA ]
       ./Sistema_Usuario.sh -d id    
"

# ------------- TESTE
[ ! -e "$ARQUIVO_BANCO" ] && echo "ERRO. Arquivo não existe" && exit 1
[ ! -r "$ARQUIVO_BANCO" ] && echo "ERRO. Arquivo sem permissão de leitura" && exit 1
[ ! -w "$ARQUIVO_BANCO" ] && echo "ERRO. Arquivo sem permissão de escrita" && exit 1
[ ! -x "$(which dialog)" ] && sudo apt install dialog 1> /dev/null 2>&1

# ------------- FUNÇÃO
MostrarNaTela() {
  local id="$(echo $linha | cut -d $SEP -f 1)"
  local name="$(echo $linha | cut -d $SEP -f 2)"
  local email="$(echo $linha | cut -d $SEP -f 3)"
    
  echo -e "${VERDE}ID: ${VERMELHO}$id"
  echo -e "${VERDE}NOME: ${VERMELHO}$name"
  echo -e "${VERDE}E-MAIL: ${VERMELHO}$email"
}

ListaUsuarios() {
  while read -r linha
  do
    [ "$(echo $linha | cut -c1)" = "#" ] && continue
    [ ! "$linha" ] && continue
    
    MostrarNaTela "$linha"
  done < "$ARQUIVO_BANCO"
}

ListarUsersDialog() {
  egrep -v "^#|^$" "$ARQUIVO_BANCO" | sort -h | tr : ' ' > "$TEMP"
  dialog --title "Lista de Usuários" --textbox "$TEMP" 20 40
  rm -f "$TEMP"
}

ValidarExistenciaUsuario() {
  grep -i -q "$1$SEP" "$ARQUIVO_BANCO"
}

InserirUsuario() {
  local ultimo_id="$(egrep "^[^#|^$]" "$ARQUIVO_BANCO" | sort | tail -n 1 | cut -d $SEP -f 1)"
  local proximo_id=$(($ultimo_id+1))
    
  local nome=$(dialog --title "Cadastro de Usuários" --stdout --inputbox "Digite o seu nome" 0 0)
  [ ! "$nome" ] && exit 1
  [ $? -ne 0 ] && continue
    
  ValidarExistenciaUsuario "$nome" && {
  dialog --title "ERRO FATAL!" --msgbox "Usuário já cadastrado no sistema!" 6 40
  exit 1 
  }
    
 local email=$(dialog --title "Cadastro de Usuários" --stdout --inputbox "Digite o seu E-mail" 0 0)
  [ $? -ne 0 ] && continue #Se a saída for diferente de zero volte para menu inserir
    
  echo "$proximo_id$SEP$nome$SEP$email" >> "$ARQUIVO_BANCO"
  dialog --title "SUCESSO!" --msgbox "Usuário cadastrado com sucesso!" 6 40
  echo
  ListarUsersDialog
}

ApagaUsuario() {
  ValidarExistenciaUsuario "$1" || return
  
  grep -i -v "$1$SEP" "$ARQUIVO_BANCO" > "$TEMP"
  mv "$TEMP" "$ARQUIVO_BANCO"
  
  echo "Usuário removido com sucesso!!"
  OrdenaLista
  ListaUsuarios
}

OrdenaLista() {
  sort "$ARQUIVO_BANCO" > "$TEMP"
  mv "$TEMP" "$ARQUIVO_BANCO"
}

# ------------- EXECUÇÃO

while test -n "$1"
do
  case "$1" in
    -l) ListaUsuarios && exit 0                         ;;
    -i) InserirUsuario "$2" && exit 0                   ;;        
    -d) ApagaUsuario "$2" && exit 0                     ;;
    -v) echo "$VERSION" && exit 0                       ;;
    -h) echo "$AJUDA" && exit 0                         ;;
     *) echo "OPÇÃO. Inválida, valide o -h" && exit 1   ;; 
  esac
  shift
done
echo -e "$MENU"
