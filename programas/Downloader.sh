#! /usr/bin/env bash
#
# convert.sh - Baixa videos do youtube e converte para áudio
#
# Autor: Jesher Minelli - Github: jesherdevsk8
# Data: 26/fev/2022
# Versão: 1.0
# Bash: versão 5.0.17
#
#
# ------ VARIAVEIS

# 64k, 128k, 256k, 320k.
qualidade="320k"

# BEST, aac, vorbis, mp3, m4a, opus, wav
formato_audio="mp3"

url=""

MSG_USO="
  $(basename $0) - [OPÇÕES]
  
  -a - BAIXAR AUDIO
  -v - BAIXAR VIDEO
"

# ------ FUNÇÕES

BAIXAR_AUDIO(){
#cd "$HOME" && mkdir youtube-dl

read -p "Coloque uma URL do youtube: " url
youtube-dl -x --audio-quality "$qualidade" --audio-format "$formato_audio" "$url"

#[[ "$?" -eq "1" ]] && { echo "Faltou p LINK"; exit 1; }
}

BAIXAR_VIDEO(){
read -p "Coloque uma URL do youtube: " url
youtube-dl "$url"
}

# ------ TESTES
[ ! -x "$(type -P youtube-dl)" ] && apt update && apt install youtube-dl -y #youtube-dl instalado?

[ ! -x "$(type -P ffmpeg)" ] && apt install ffmpeg -y #ffmpeg instalado?

# ------ EXECUÇÃO
while test -n "$1"
do
  case "$1" in
      -a) BAIXAR_AUDIO && exit 1                                     ;;
      -v) BAIXAR_VIDEO && exit 1                                     ;;
       *) echo -e "Opção inválida, tente novamente......" && exit 1  ;;
  esac
  shift
done

echo "$MSG_USO"
