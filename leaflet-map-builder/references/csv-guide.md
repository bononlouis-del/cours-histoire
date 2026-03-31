# Guide du format CSV pour Leaflet

Pour que la carte fonctionne correctement, votre fichier CSV doit respecter les règles suivantes :

## 1. Colonnes obligatoires
*   **Latitude** : Coordonnées décimales (ex: `44.837`).
*   **Longitude** : Coordonnées décimales (ex: `-0.579`).
*   **Nom** : Le titre qui apparaîtra dans la popup.

## 2. Séparateur
Par défaut, le script utilise le point-virgule (`;`) ou la virgule (`,`). Assurez-vous que le séparateur dans `index.html` correspond à celui de votre fichier.

## 3. Nettoyage des données
*   Évitez les lignes vides.
*   Assurez-vous que les nombres utilisent le point (`.`) comme séparateur décimal et non la virgule (`,`).
