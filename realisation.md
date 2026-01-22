# 🛠️ Réalisations techniques

Ce document décrit les actions réellement effectuées sur le serveur dans le cadre de ce TP.

---

## 🧱 Prise en main du serveur

Commandes utilisées :
```bash
lsb_release -a
uname -m
hostnamectl
id
groups loick
sudo -l
systemctl status NetworkManager
systemctl status systemd-networkd
systemctl status networking
curl https://google.com
df -h
sudo apt update && sudo apt upgrade -y

👤 Gestion des utilisateurs
sudo adduser --system --shell /usr/sbin/nologin webuser

📁 Gestion des permissions
sudo mkdir -p /srv/web
sudo chown -R root:webuser /srv/web
sudo chmod 770 /srv/web
sudo -u webuser ls -l /srv/web
# test accès user standard :
cd /srv/web

🌐 Déploiement NGINX
sudo apt install nginx -y
sudo systemctl status nginx
ss -tulnp
curl http://localhost
sudo systemctl enable nginx

🔍 Diagnostic incident volontaire
sudo systemctl stop nginx
curl http://localhost
sudo systemctl status nginx
sudo nmap -v localhost
sudo systemctl restart nginx

📜 Logs
ls /var/log/nginx
tail -f /var/log/nginx/error.log
