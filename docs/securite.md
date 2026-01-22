# 🔐 Sécurité

## Mesures mises en place

- Application du **principe du moindre privilège**
- Utilisateurs système **sans shell interactif**
- Permissions strictes sur les répertoires sensibles
- Services exécutés avec des **comptes dédiés**, jamais en `root`

---

## Objectifs

- Réduction de la surface d’attaque
- Limitation des erreurs humaines
- Amélioration de la traçabilité et de la maintenabilité

---

## Utilisateur dédié au service web

Le service web **n’utilise pas l’utilisateur par défaut `www-data`**.

Un utilisateur système dédié (`webuser`) a été créé afin de :

- isoler le service web du reste du système
- limiter les privilèges au strict nécessaire
- éviter l’utilisation d’un compte générique partagé
- améliorer la traçabilité des actions

### Permissions appliquées

Les permissions sur la racine web (`/srv/web`) sont configurées comme suit :

- **propriétaire** : `root`
- **groupe** : `webuser`
- **droits** : `770`

Ce schéma permet :
- une administration complète par `root`
- une gestion du contenu uniquement par le service web
- l’absence totale d’accès pour les autres utilisateurs

👉 Ce choix renforce la sécurité et s’inscrit dans une logique **production-ready**.

---

## Validation

Les accès ont été validés par des tests concrets :

- accès autorisé via l’utilisateur `webuser`
- accès refusé pour les utilisateurs standards
- vérification effective des permissions système
