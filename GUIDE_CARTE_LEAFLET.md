# Guide : Créer une carte interactive avec Leaflet et GitHub Pages

Ce guide explique comment transformer un fichier CSV (contenant des coordonnées GPS) en une carte web interactive hébergée gratuitement sur GitHub.

## 1. Préparation des données (CSV)
Votre fichier doit être au format `.csv` et contenir au minimum :
*   Une colonne `latitude` (ex: 44.837)
*   Une colonne `longitude` (ex: -0.579)
*   Des colonnes d'information (Nom, Description, etc.)
*   **Attention :** Notez le séparateur utilisé (souvent `;` ou `,`).

## 2. Structure du projet
Placez deux fichiers à la racine de votre dépôt GitHub :
1.  `votre_donnees.csv` : Le fichier de données.
2.  `index.html` : Le fichier qui contient le code de la carte.

## 3. Le code HTML / JavaScript
Utilisez les bibliothèques suivantes dans votre `index.html` :
*   **Leaflet.js** : Pour afficher la carte et les marqueurs.
*   **PapaParse.js** : Pour lire et transformer le CSV en données utilisables par le navigateur.

### Squelette du code à adapter :
```html
<!-- Bibliothèques à inclure dans le <head> -->
<link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/PapaParse/5.4.1/papaparse.min.js"></script>

<div id="map" style="height: 100vh;"></div>

<script>
    const map = L.map('map').setView([44.83, -0.57], 13); // Centrage par défaut
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(map);

    fetch('votre_donnees.csv')
        .then(res => res.text())
        .then(csv => {
            Papa.parse(csv, {
                header: true,
                delimiter: ";", // /!\ À adapter selon votre CSV
                complete: function(results) {
                    results.data.forEach(row => {
                        if(row.latitude && row.longitude) {
                            L.marker([row.latitude, row.longitude])
                             .addTo(map)
                             .bindPopup(`<b>${row.nom}</b>`);
                        }
                    });
                }
            });
        });
</script>
```

## 4. Activation de l'hébergement (GitHub Pages)
1.  Allez dans les **Settings** (Paramètres) de votre dépôt GitHub.
2.  Cliquez sur l'onglet **Pages** (colonne de gauche).
3.  Sous "Build and deployment" > "Branch", sélectionnez `main` (ou la branche de votre choix) et le dossier `/ (root)`.
4.  Cliquez sur **Save**.
5.  Votre lien sera disponible sous 1 à 2 minutes.

## 5. Mise à jour via le terminal
Pour mettre à jour vos données ou votre code, utilisez ces commandes :
```bash
git add .
git commit -m "Mise à jour des données"
git push origin main
```

---
*Guide généré pour le projet Inclusion Numérique Bordeaux.*
push dans pages
