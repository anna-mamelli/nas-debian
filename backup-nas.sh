#!/bin/bash
LOG=/var/log/nas-backup.log
DATE=$(date '+%Y-%m-%d %H:%M:%S')
echo "=== Sauvegarde : $DATE ===" >> $LOG
rsync -avz --delete /srv/nas/ /srv/backup/nas/ >> $LOG 2>&1
echo "=== Terminee : $(date) ===" >> $LOG
