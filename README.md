# TP LINUX PROFESSIONNEL — ADMIN SYSTÈME (NIVEAU 2)

## Architecture technique
- Serveur Debian GNU/Linux 12
- Services : NGINX
- User dédié : web_intranet
- Arborescence :
  - /srv/web_intranet
  - /var/log/nginx/
- Réseau : HTTP 80

## Procédure déploiement site intranet
1. Créer l’utilisateur système
2. Créer le dossier web
3. Créer le vhost NGINX
4. Activer le site
5. Tester la config
6. Vérifier les logs

## Procédure diagnostic
- Vérifier service NGINX : `systemctl status nginx`
- Vérifier config : `nginx -t`
- Logs : `/var/log/nginx/intranet/`


## Axes d’amélioration
- Restaurer `/etc/nginx` et `/srv/web_intranet` depuis backup
- Ajouter multi-sites
- Superviser le serveur
- Automatiser les backups
