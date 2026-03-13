#!/bin/bash
if [ $# -lt 1 ]; then
  echo "Usage: $0 <nom_utilisateur>"
  exit 1
fi
USERNAME=$1
sudo useradd -m -s /bin/bash -G nasusers $USERNAME
sudo passwd $USERNAME
sudo mkdir -p /srv/nas/$USERNAME
sudo chown $USERNAME:$USERNAME /srv/nas/$USERNAME
sudo chmod 700 /srv/nas/$USERNAME
sudo ln -s /srv/nas/public /srv/nas/$USERNAME/public
echo "Utilisateur $USERNAME cree avec succes."
