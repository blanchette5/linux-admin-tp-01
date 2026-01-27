# 🔎 Diagnostic et incidents — TP2

## 1️⃣ Permissions cassées
### Vérification
```bash
ls -l /srv/web_intranet

Correction
sudo chown intranetuser:intranetuser /srv/web_intranet
sudo chmod 750 /srv/web_intranet
Assure que le propriétaire est correct et que les permissions empêchent l’accès aux utilisateurs non autorisés.

2️⃣ Mauvais port NGINX

Vérification
ss -tulnp | grep nginx

Correction
sudo nano /etc/nginx/sites-available/intranet.conf

sudo systemctl reload nginx
Permet de corriger le port d’écoute ou la configuration du vhost si le site n’est pas accessible.

3️⃣ Test site local
curl -H "Host: intranet.local" http://localhost
Vérifie que le site répond correctement en local avant de tester depuis le réseau.

4️⃣ Logs
/var/log/nginx/access.log → Requêtes HTTP reçues
/var/log/nginx/error.log → Erreurs applicatives

Toujours consulter les logs pour diagnostiquer rapidement les incidents.