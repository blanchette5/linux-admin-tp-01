# 🌐 2️⃣ Création du site intranet — TP2

## 1️⃣ Créer l’utilisateur système
```bash
sudo adduser -r -s /usr/sbin/nologin web_intranet
L’option -r crée un utilisateur système et -s /usr/sbin/nologin empêche la connexion interactive.
Cela isole le service web et améliore la sécurité.

2️⃣ Créer le dossier web et définir les permissions
sudo mkdir -p /srv/web_intranet
sudo chown intranetuser:intranetuser /srv/web_intranet
sudo chmod 750 /srv/web_intranet
chown → définit le propriétaire et le groupe
chmod 750 → permissions : lecture/écriture pour le propriétaire, lecture/exécution pour le groupe, aucun accès pour les autres

3️⃣ Créer le fichier vhost NGINX
sudo nano /etc/nginx/sites-available/intranet.conf
Contenu du vhost
server {
    listen 80;
    server_name intranet.local;

    root /srv/web_intranet;
    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }
}
Définit le port, le nom du serveur, la racine web et la manière dont NGINX doit traiter les requêtes.

4️⃣ Activer le site et tester la configuration
sudo ln -s /etc/nginx/sites-available/intranet.conf /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl reload nginx
ln -s → active le site
nginx -t → vérifie la syntaxe du vhost
systemctl reload nginx → recharge la configuration sans redémarrer NGINX