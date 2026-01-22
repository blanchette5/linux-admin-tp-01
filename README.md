# 🧪 TP Linux Professionnel — Administration Système

Ce projet simule la prise en charge d’un **serveur Linux en environnement PME** dans un contexte professionnel réel.

---

## 🎯 Objectif

L’objectif est de démontrer :

- une **prise en main rapide** d’un serveur Linux
- une **administration sécurisée**
- une **démarche structurée et documentée**
- une **capacité de diagnostic**
- une **logique d’automatisation réutilisable en production**

---

## 🖥️ Environnement

- **OS** : Debian GNU/Linux 12 (Bookworm)
- **Architecture** : x86_64
- **Serveur** : SVL-PS-LIN-01
- **Service principal** : NGINX (HTTP)

---

### Choix techniques notables

- Utilisation d’un **utilisateur système dédié** au service web (`webuser`)
- Refus volontaire d’utiliser `www-data`
- Permissions strictes appliquées sur `/srv/web`

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

