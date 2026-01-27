# 🏗️ Architecture technique — TP2 simplifié

## 🖥️ Serveur
- **Système :** Debian GNU/Linux 12  
- **Utilisateur administrateur :** avec droits `sudo`  (loick)

## ⚙️ Services
- **Serveur web :** NGINX (HTTP)  
- **Utilisateur dédié :** `web_intranet` (pour isoler le site web)  

## 🗂️ Arborescence
| Chemin | Description |
|--------|------------|
| `/srv/web_intranet` | Racine web du site intranet |
| `/srv/admin` | Scripts et documentation |

## 🌐 Réseau
- **Accès Internet :** fonctionnel  
- **Port HTTP :** 80
