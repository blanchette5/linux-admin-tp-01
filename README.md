# 🧪 TP Linux Professionnel — Administration Système

Ce projet simule la prise en charge d’un **serveur Linux en environnement PME** dans un contexte professionnel réel.

---

> 🎯 **Objectifs**
> 
> - Mise en place et sécurisation d’un serveur Linux Debian en contexte PME  
> - Déploiement d’un service web NGINX avec utilisateur système dédié  
> - Application du principe du moindre privilège et permissions strictes  
> - Scripts Bash d’automatisation et documentation orientée production

---

## 🖥️ Environnement

- **OS** : Debian GNU/Linux 12 (Bookworm)
- **Architecture** : x86_64
- **Serveur** : SVL-PS-LIN-01
- **Service principal** : NGINX (HTTP)

---

### Choix techniques notables

- Création d’un **utilisateur système dédié** au service web (`webuser`)
- Refus volontaire d’utiliser l’utilisateur par défaut `www-data`
- Application de **permissions strictes** sur `/srv/web` (770)
- Séparation claire entre administration (`root`) et service applicatif


---

## 📂 Structure du dépôt

```text
linux-admin-tp-01/
├── README.md
├── docs/           # Documentation technique
│   ├── contexte.md
│   ├── architecture.md
│   ├── procedures.md
│   └── securite.md
├── scripts/        # Scripts d’automatisation
│   ├── create_web_user.sh
│   └── check_nginx.sh
├── logs/           # Informations sur les logs
│   └── README.md
└── assets/         # Captures et supports

```
## 📸 Preuves visuelles

Des captures d’écran sont disponibles dans `assets/screenshots/` et illustrent :

- l’identification du système
- la vérification du réseau
- le déploiement du service NGINX
- la création d’un utilisateur dédié au service web
- l’application des permissions et les tests d’accès
- le diagnostic via scan de ports


## 🛠️ Compétences mises en œuvre

- Linux (Debian)
- Administration système
- Sécurité système
- Gestion des utilisateurs et permissions
- Bash scripting
- Diagnostic & exploitation
- Documentation technique
