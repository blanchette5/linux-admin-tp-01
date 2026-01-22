#!/bin/bash
set -euo pipefail

LOG="/var/log/web_user_creation.log"

read -rp "Nom de l'utilisateur web : " USER

if [[ -z "$USER" ]]; then
  echo "Nom vide. Abandon."
  exit 1
fi

if id "$USER" &>/dev/null; then
  echo "$(date) - Utilisateur $USER déjà existant" | tee -a "$LOG"
else
  useradd -r -s /usr/sbin/nologin "$USER"
  mkdir -p "/srv/web_$USER"
  chown -R root:"$USER" "/srv/web_$USER"
  chmod 770 "/srv/web_$USER"
  echo "$(date) - Utilisateur $USER créé et permissions appliquées" | tee -a "$LOG"
fi
