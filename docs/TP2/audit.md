# Audit serveur

## Utilisateurs
getent passwd
- root
- intranetuser
- autres users système

## Groupes
getent group
id
groups

## Services
systemctl list-units --type=service

## Ports
ss -tulnp

## Points d’amélioration
- Supprimer services inutiles
- Vérifier utilisateurs obsolètes
