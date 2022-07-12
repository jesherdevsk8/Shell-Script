#!/usr/bin/env sh

# deixa arquivo de texto de blob do banco em uma linha adicionando uma ',' virgula

sed -i ':a;$!N;s/\n/,/;ta;' regex && cat regex

# Trocar dono
# sudo chown -R root:usuario /opt/apache-tomcat

