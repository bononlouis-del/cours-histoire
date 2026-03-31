#!/bin/bash
# Script simple pour automatiser le push vers GitHub Pages

echo "🚀 Préparation de la mise à jour..."
git add .
git commit -m "Mise à jour automatique : $(date +'%Y-%m-%d %H:%M:%S')"
git push origin main
echo "✅ Mise à jour effectuée avec succès !"
