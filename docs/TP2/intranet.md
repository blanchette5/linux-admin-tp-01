🌐 2️⃣ Création du site intranet

Créer l’utilisateur système
sudo adduser -r -s /usr/sbin/nologin web_intranet

Créer le dossier web et définir permissions
sudo mkdir -p /srv/web_intranet
sudo chown intranetuser:intranetuser /srv/web_intranet
sudo chmod 750 /srv/web_intranet

Créer le fichier vhost NGINX
sudo nano /etc/nginx/sites-available/intranet.conf

Contenu du vhost :
server {
    listen 80;
    server_name intranet.local;

    root /srv/web_intranet;
    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }
}


Activer le site et tester la config

sudo ln -s /etc/nginx/sites-available/intranet.conf /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl reload nginx


Explications :

ln -s → active le site
nginx -t → vérifie la syntaxe du vhost
systemctl reload nginx → recharge la configuration