# 🧪 TP Linux Professionnel — Administration Système  
## TP2 — Exploitation & montée en charge (suite du TP1)

Ce TP constitue la **suite directe du TP1**.  
Il se place dans un contexte réaliste où un **serveur Linux déjà déployé** doit être **exploité, audité et étendu**, comme en environnement professionnel.

---

## 🎯 Objectifs du TP2

- Auditer un serveur Linux existant avant toute modification
- Faire évoluer un service web déjà en place
- Héberger plusieurs sites web sur un même serveur
- Isoler les services par utilisateur système et dossier dédié
- Réaliser des tests et diagnostics simples
- Maintenir une documentation exploitable par un autre administrateur

---

## 🖥️ Environnement

- **OS** : Debian GNU/Linux 12 (Bookworm)
- **Architecture** : x86_64
- **Serveur** : SVL-PS-LIN-01
- **Base existante** : TP1  
  (Serveur Linux + NGINX + utilisateur dédié `webuser`)

---

## 🔄 Contexte professionnel

Le serveur issu du TP1 est désormais **en production dans une PME**.

De nouveaux besoins apparaissent :

- Héberger plusieurs applications internes
- Garantir une séparation stricte des droits
- Conserver un serveur maintenable et compréhensible
- Être capable de diagnostiquer rapidement un incident

Ce TP simule donc une **phase d’exploitation réelle**, après la mise en production initiale.

---
