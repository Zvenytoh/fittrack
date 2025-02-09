# Application de Suivi de Sport et de Nutrition

## Description
Développement d'une application mobile Flutter permettant de suivre l'activité physique et l'alimentation. Ce projet est conçu pour servir d'exercice en développement tout en créant une application professionnelle et intéressante pour un portfolio.

## Fonctionnalités principales

### 🔹 Suivi des activités physiques
- Suivi des exercices réalisés (type, durée, intensité).
- Comptage des pas via les capteurs du téléphone.
- Calcul des calories brûlées.

### 🔹 Suivi nutritionnel
- Saisie des repas consommés avec possibilité de scanner des codes-barres.
- Calcul des calories consommées.
- Base d'aliments avec informations nutritionnelles (protéines, glucides, graisses, etc.).

### 🔹 Objectifs et recommandations
- Définition d'objectifs (perte de poids, prise de muscle, etc.).
- Recommandations en fonction des objectifs (nombre de calories à consommer).

### 🔹 Historique et rapport
- Suivi des progrès avec des graphiques.
- Visualisation des tendances alimentaires et sportives.

### 🔹 API gratuite
- Utilisation d'une API gratuite (ex : Edamam, Nutritionix) pour récupérer les informations nutritionnelles.

## 📂 Arborescence du projet (provisoire)
```
lib/
├── main.dart  # Point d'entrée de l'application
├── src/
│   ├── activity_tracker
│   │   ├── activity_details_view.dart
│   │   ├── activity_list_view.dart
│   │   └── model/
│   │       └── activity.dart
│   ├── calorie_calculator
│   │   ├── calorie_calculator.dart
│   │   ├── calorie_calculator_view.dart
│   │   └── model/
│   │       └── calorie_data.dart
│   ├── localization
│   │   ├── app_en.arb
│   │   └── app_fr.arb
│   ├── nutrition_tracker
│   │   ├── meal_details_view.dart
│   │   ├── meal_list_view.dart
│   │   └── model/
│   │       └── meal.dart
│   ├── services
│   │   └── nutrition_api_service.dart
│   └── settings
│       ├── model/
│       │   └── settings.dart
│       ├── settings_controller.dart
│       ├── settings_service.dart
│       └── settings_view.dart
assets/        # Images, icônes, polices
pubspec.yaml   # Dépendances du projet
```

## 🛠 Extensions VS Code recommandées
- Flutter, Dart (de base).
- Flutter Widget Snippets.
- Pubspec Assist.
- GitLens (gestion des versions).

## 🚀 Roadmap

### 1️⃣ Installation et configuration initiale
- Installation de Flutter et configuration de l'environnement.
- Configuration du projet avec les dépendances nécessaires.
- Choix de l'API nutritionnelle.

### 2️⃣ Développement de l'interface utilisateur
- Création des écrans principaux (accueil, suivi des activités, suivi des repas, calculateur de calories).
- Développement des widgets réutilisables (cartes d'activités, de repas, etc.).

### 3️⃣ Intégration des fonctionnalités
- Ajout du suivi des activités physiques (calcul des calories brûlées et comptage des pas).
- Intégration du suivi nutritionnel avec l'API choisie.
- Calcul du métabolisme de base et recommandation calorique en fonction des objectifs (prise de masse, perte de poids, etc.).
- Enregistrement des données en local pour un accès hors-ligne.

### 4️⃣ Test et débogage
- Tests unitaires pour garantir le bon fonctionnement des calculs et de l'API.
- Tests d'intégration pour vérifier l'interaction entre les différentes parties de l'application.
- Optimisation des performances, en particulier pour le calcul des calories et le suivi en temps réel.

### 5️⃣ Finalisation et déploiement
- Préparation au déploiement sur Google Play / App Store.
- Ajout d'une fonction de sauvegarde des données (ex : préférences utilisateur, historique d'activités).
- Améliorations de l'interface utilisateur et expérience (UX).

## 🔜 Prochaines étapes
- Configurer l'environnement Flutter et les dépendances.
- Créer la structure de base et les écrans principaux.
- Ajouter le suivi des activités physiques et la gestion des calories brûlées.
- Intégrer l'API nutritionnelle pour récupérer les informations des repas.
- Développer le calculateur de calories et l'intégration des recommandations personnalisées.