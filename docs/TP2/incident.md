# Diagnostic et incidents

## Permissions cassées
- Vérifier : ls -l /srv/web_intranet
- Correction : chown intranetuser:intranetuser /srv/web_intranet
- chmod 750 /srv/web_intranet

## Mauvais port NGINX
- Vérifier : ss -tulnp | grep nginx
- Correction : nano /etc/nginx/sites-available/intranet.conf

## Test site local
curl -H "Host: intranet.local" http://localhost

## Logs
- /var/log/nginx/intranet/access.log
- /var/log/nginx/intranet/error.log
