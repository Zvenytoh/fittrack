# fittrack

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application that follows the
[simple app state management
tutorial](https://flutter.dev/to/state-management-sample).

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Assets

The `assets` directory houses images, fonts, and any other files you want to
include with your application.

The `assets/images` directory contains [resolution-aware
images](https://flutter.dev/to/resolution-aware-images).

## Localization

This project generates localized messages based on arb files found in
the `lib/src/localization` directory.

To support additional languages, please visit the tutorial on
[Internationalizing Flutter apps](https://flutter.dev/to/internationalization).

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
├── screens/   # Écrans principaux (home.dart, activity_screen.dart, nutrition_screen.dart)
├── widgets/   # Widgets réutilisables (activity_card.dart, meal_card.dart)
├── models/    # Modèles de données (activity.dart, meal.dart)
├── services/  # Services d'interaction avec l'API (nutrition_api_service.dart)
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
- Création des écrans principaux (accueil, suivi des activités, suivi des repas).
- Développement des widgets réutilisables.

### 3️⃣ Intégration des fonctionnalités
- Ajout du suivi des activités physiques (calories, pas).
- Intégration du suivi nutritionnel avec l'API choisie.
- Enregistrement des données en local.

### 4️⃣ Test et débogage
- Tests unitaires et fonctionnels.
- Optimisation des performances.

### 5️⃣ Finalisation et déploiement
- Ajout éventuel de l'authentification.
- Préparation au déploiement sur Google Play / App Store.

## 🔜 Prochaines étapes
- Configurer l'environnement Flutter.
- Créer la structure de base et les écrans principaux.
- Ajouter le suivi des activités (pas, calories brûlées).
- Intégrer l'API nutritionnelle pour récupérer les informations des repas.

---
📌 **Ce projet est en cours de développement. Toute contribution est la bienvenue !** 🚀
