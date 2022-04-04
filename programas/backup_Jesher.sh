#!/usr/bin/env bash

# --- VARIÁVEIS

backup_path="/home/jesher/claretiano/tickets" # Diretório de backup

external_storage="/media/jesher/JesherGun" # Dispositivo externo de destino

date_format=$(date "+%A %d-%m-%Y")

final_archive="backup-$date_format.tar.gz" # Formato do arquivo

log_file="/var/log/daily-backup.log" # Arquivo de log

# --- TESTES

if ! mountpoint -q -- $external_storage; then # Pendrive plugado na máquina?
	printf "[$date_format] DEVICE NOT MOUNTED in: $external_storage CHECK IT.\n" >> $log_file
	exit 1
fi

# --- EXECUÇÃO

if tar -cpSzf "$external_storage/$final_archive" "$backup_path"; then
	printf "[$date_format] BACKUP SUCCESS.\n" >> $log_file
else
	printf "[$date_format] BACKUP ERROR...!!\n" >> $log_file
fi

find $external_storage -mtime +10 # Excluir arquivos com mais de dez dias


# Torne o script executavel em qualquer lugar
# sudo ln -s $HOME/scripts/backup.sh /usr/local/bin/backup.sh

# ADICIONAR NO CRON
# execute como root - crontab -e
# 0 9 * * * /usr/local/sbin/backup.sh
# Visite o site: https://crontab.guru/