# NAS Debian 13 - Serveur NAS Évolutif

Projet réalisé dans le cadre de la formation La Plateforme_ (Marseille).

## Fonctionnalités
- SFTP avec chroot et isolation utilisateurs
- WebDAV (Apache + SSL + Auth Digest)
- Samba (SMB) pour accès Windows natif
- NFS pour accès Linux/Mac natif
- RAID 5 logiciel (mdadm, 3 disques, 20 Go)
- Sauvegarde automatisée (rsync + cron)
- Interface d'administration Cockpit
- Sécurisation : UFW, Fail2ban, durcissement SSH
- Virtualisation KVM/QEMU

## Fichiers inclus
- sshd_config - Configuration SSH/SFTP avec chroot
- webdav.conf - VirtualHost Apache WebDAV
- smb.conf - Configuration Samba
- exports - Configuration NFS
- jail.local - Configuration Fail2ban
- interfaces - Configuration réseau statique
- create-nas-user.sh - Script de création d'utilisateur NAS
- backup-nas.sh - Script de sauvegarde rsync

## Auteur
Anna Mamelli - Mars 2026
