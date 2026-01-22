🛠️ 4️⃣ docs/procedures.md
# 🛠️ Procédures d’exploitation

## Vérification du service web

```bash
systemctl status nginx
ss -tulnp | grep :80

Redémarrage du service
sudo systemctl restart nginx

Vérification réseau
ip route
ping google.com

Diagnostic en cas d’incident
systemctl status nginx
sudo nmap localhost


---

# 🔐 5️⃣ `docs/securite.md`

```md
# 🔐 Sécurité

## Mesures mises en place

- Principe du moindre privilège
- Utilisateurs système sans shell interactif
- Permissions strictes sur les répertoires sensibles
- Services non exécutés en `root`

## Objectifs

- Réduction de la surface d’attaque
- Limitation des erreurs humaines
- Meilleure traçabilité des actions
