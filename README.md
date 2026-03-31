# Tutoriel : Carte Interactive de l'Inclusion Numérique

Ce projet permet de générer une carte interactive à partir d'un fichier CSV de données géolocalisées en utilisant **Leaflet.js**.

## 🚀 Guide de démarrage rapide

### 1. Préparer vos données
Le fichier `met_lieux_inclusion_numerique.csv` doit contenir les colonnes suivantes :
*   `nom` : Nom du lieu.
*   `latitude` et `longitude` : Coordonnées GPS (ex: 44.837, -0.579).
*   `type_lieu` : Catégorie (Espace public numérique, bibliothèque, etc.).
*   `adresse_brut` : Adresse postale.

> **Note :** Le séparateur utilisé dans ce projet est le point-virgule (`;`).

### 2. Personnaliser la carte (`index.html`)
Le fichier `index.html` contient la logique d'affichage. Vous pouvez modifier :
*   **Le centrage** : Modifiez `setView([44.83, -0.57], 12)` pour changer le point de départ.
*   **Le style** : Modifiez la section `<style>` pour changer les couleurs des popups ou la taille de la carte.

### 3. Déploiement sur GitHub Pages
1.  Poussez vos fichiers sur votre dépôt GitHub.
2.  Allez dans **Settings** > **Pages**.
3.  Sélectionnez la branche `main` et le dossier `/(root)`.
4.  Cliquez sur **Save**. Votre carte sera en ligne en quelques secondes !

## 📊 Analyses et Résultats
*   [Consulter l'analyse des services](ANALYSE_SERVICES.md) : Une synthèse des types de lieux et des services proposés sur le territoire.

## 🛠️ Outils utilisés
*   [Leaflet.js](https://leafletjs.com/) : Bibliothèque JavaScript pour les cartes interactives.
*   [PapaParse](https://www.papaparse.com/) : Analyseur CSV puissant pour JavaScript.
*   [OpenStreetMap](https://www.openstreetmap.org/) : Fournisseur de fonds de carte.

## 📝 Mise à jour des données
Pour mettre à jour les points sur la carte, il suffit de remplacer le fichier `.csv` par une version plus récente et de pousser les changements :
```bash
git add met_lieux_inclusion_numerique.csv
git commit -m "Mise à jour des lieux"
git push origin main
```
