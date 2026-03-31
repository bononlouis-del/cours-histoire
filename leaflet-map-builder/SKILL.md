---
name: leaflet-map-builder
description: Guide et outils pour créer des cartes interactives avec Leaflet.js à partir de fichiers CSV. Utilisez ce skill pour générer des fichiers index.html intégrant Leaflet et PapaParse, configurer l'affichage de marqueurs géolocalisés et déployer le résultat sur GitHub Pages.
---

# Leaflet Map Builder

Ce skill automatise la création d'une carte interactive web à partir de données CSV.

## Flux de travail recommandé

1.  **Analyser les données** : Identifiez les colonnes `latitude`, `longitude` et les colonnes de contenu (Nom, Description).
2.  **Préparer le template** : Copiez le fichier `assets/index.html` à la racine de votre projet.
3.  **Personnaliser le code** : 
    - Remplacez les placeholders `{{PLACEHOLDERS}}` par les valeurs appropriées.
    - Vérifiez le séparateur CSV (`delimiter`).
4.  **Déployer** : Poussez les fichiers sur GitHub et activez les GitHub Pages.

## Ressources du skill

- **Template HTML** : `assets/index.html` (Boilerplate prêt à l'emploi).
- **Format de données** : Consultez `references/csv-guide.md` pour les spécifications du CSV.

## Exemple de configuration

```javascript
const map = L.map('map').setView([44.83, -0.57], 12);
// ...
Papa.parse(csvString, {
    header: true,
    delimiter: ";", // Point-virgule souvent utilisé dans les CSV français
    // ...
});
```
