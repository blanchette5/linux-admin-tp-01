🏗️ Architecture technique — TP2 simplifié

Serveur
1 serveur Debian GNU/Linux 12
Accès SSH sécurisé
Utilisateur administrateur avec droits sudo
Services

NGINX (HTTP)
Utilisateur système dédié pour le site : intranetuser

Arborescence
/srv/web_intranet : racine web intranet
/srv/admin : scripts et documentation
/var/log/nginx/intranet/ : logs du site intranet

Réseau
Accès Internet fonctionnel
Port SSH (22 ou personnalisé)
Port HTTP (80)