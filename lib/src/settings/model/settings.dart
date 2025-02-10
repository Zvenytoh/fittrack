import 'package:flutter/material.dart';

class Settings {
  final ThemeMode themeMode;
  final String languageCode;

  Settings({
    required this.themeMode,
    required this.languageCode,
  });

  // Méthode pour copier l'objet avec des modifications partielles
  Settings copyWith({
    ThemeMode? themeMode,
    String? languageCode,
  }) {
    return Settings(
      themeMode: themeMode ?? this.themeMode,
      languageCode: languageCode ?? this.languageCode,
    );
  }
}
