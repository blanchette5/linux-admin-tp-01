# 🏗️ TP LINUX PROFESSIONNEL — ADMIN SYSTÈME (NIVEAU 2)

## 🖥️ Architecture technique
- **Serveur :** Debian GNU/Linux 12  
- **Services :** NGINX  
- **Utilisateur dédié :** `web_intranet`  
- **Arborescence :**
  - `/srv/web_intranet` → racine du site intranet
  - `/var/log/nginx/` → logs du serveur
  - `/srv/admin` → documentation et backups
- **Réseau :** HTTP (port 80)  

---
## 📁 Structure du dépôt
LINUX-ADMIN-TP-01/
├── docs/
│ ├── TP1/
│ └── TP2/
├── logs/
│ ├── TP1/
│ └── TP2/
├── screenshots/
│ ├── TP1/screenshots/
│ └── TP2/screenshots/
└── scripts/

---
## 🌐 Procédure générale du TP
Durant ce TP, nous avons mis en place :

1. **Audit du serveur**
   - Vérification des utilisateurs, groupes, services et ports actifs  
   - Identification des points à améliorer pour sécuriser le serveur

2. **Création du site intranet**
   - Création d’un utilisateur dédié pour le site  
   - Création de la racine web et définition des permissions  
   - Création et activation du virtual host NGINX  
   - Tests de fonctionnement et validation du site

3. **Sécurité et durcissement**
   - Mise en place des bonnes pratiques pour le service web  
   - Isolation du site avec un utilisateur dédié  
   - Préparation pour des améliorations futures (multi-sites, SSH, logs…)

4. **Diagnostic et supervision**
   - Vérification du fonctionnement du site  
   - Analyse des logs  
   - Mise en évidence des incidents simulés et corrections appliquées

5. **Documentation et reprise**
   - Organisation des logs et documentation des procédures  
   - Sauvegarde des configurations et du contenu web  
   - Screenshots réalisés à chaque étape pour preuve et suivi

> Les **commandes utilisées et détails techniques** sont documentés dans les fichiers séparés et les screenshots fournis dans le dossier `/screenshots`.

---

## 💡 Axes d’amélioration à mettre en place pour les prochains TP

- Gestion de **multi-sites** avec utilisateurs et racines web distinctes  
- Supervision serveur (CPU, RAM, disque, services, statut des sites)  
- Automatisation des déploiements et backups  
- Sécurité renforcée : permissions, méthodes HTTP restreintes, ports SSH sécurisés  
- Organisation des logs par site pour faciliter le diagnostic  
- Création d’une **page status serveur** pour visualiser uptime, hostname et services  
- Documentation complète et uniforme pour faciliter la transmission à un autre administrateur
