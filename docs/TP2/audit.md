# 🔍 Audit serveur — TP2

## 👤 Utilisateurs
```bash
getent passwd
root
web_intranet
autres utilisateurs système

👥 Groupes
getent group
id
groups

Vérifie l’appartenance aux groupes
Confirme les droits des utilisateurs

⚙️ Services
systemctl list-units --type=service
Liste tous les services actifs sur le serveur
Permet d’identifier ceux qui ne sont pas nécessaires

🌐 Ports ouverts
ss -tulnp
Vérifie tous les ports exposés et les programmes qui les utilisent

📝 Points d’amélioration
Supprimer les services inutiles
Vérifier les utilisateurs obsolètes ou non utilisés
Vérifier les permissions des utilisateurs et groupes