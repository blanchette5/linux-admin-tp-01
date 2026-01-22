#!/bin/bash
if systemctl is-active --quiet nginx; then
  echo "✅ NGINX est actif"
else
  echo "❌ NGINX est arrêté"
  exit 1
fi
