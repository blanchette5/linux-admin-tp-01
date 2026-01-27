# 🏗️ Architecture technique

## Serveur

- 1 serveur Debian GNU/Linux 12
- Accès SSH sécurisé
- Utilisateur administrateur avec droits `sudo`

## Services

- NGINX (HTTP)
- Utilisateur système dédié au service web (`webuser`)

## Arborescence

- `/srv/web` : racine web
- `/srv/admin` : scripts et documentation
- `/var/log/nginx` : logs du service web

## Réseau

- Accès Internet fonctionnel
- Port 22 (SSH)
- Port 80 (HTTP)
