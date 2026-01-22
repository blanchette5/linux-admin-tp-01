#!/bin/bash
set -euo pipefail

LOG="/var/log/web_user_creation.log"

read -rp "Nom de l'utilisateur web : " USER

if [[ -z "${USER}" ]]; then
  echo "Nom vide. Abandon."
  exit 1
fi

if id "$USER" &>/dev/null; then
  echo "$(date) - Utilisateur $USER déjà existant" | tee -a "$LOG"
else
  sudo useradd -r -s /usr/sbin/nologin "$USER"
  sudo mkdir -p "/srv/web_${USER}"
  sudo chown -R root:"$USER" "/srv/web_${USER}"
  sudo chmod 770 "/srv/web_${USER}"
  echo "$(date) - Utilisateur $USER créé + permissions appliquées" | tee -a "$LOG"
fi
