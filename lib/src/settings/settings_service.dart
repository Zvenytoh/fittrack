import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


/// A service that stores and retrieves user settings.
///
/// By default, this class does not persist user settings. If you'd like to
/// persist the user settings locally, use the shared_preferences package. If
/// you'd like to store settings on a web server, use the http package.
class SettingsService {
  /// Loads the User's preferred ThemeMode from local or remote storage.
  Future<ThemeMode> themeMode() async {
  final prefs = await SharedPreferences.getInstance();
  final themeString = prefs.getString('themeMode');
  if (themeString == null) {
    return ThemeMode.system;  // Par défaut, utilise le mode du système
  }
  return ThemeMode.values.firstWhere(
    (e) => e.toString() == themeString,
    orElse: () => ThemeMode.system,  // Si une valeur invalide est trouvée, revenir à ThemeMode.system
  );
}

  /// Persists the user's preferred ThemeMode to local or remote storage.
  Future<void> updateThemeMode(ThemeMode theme) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('themeMode', theme.toString());  // Sauvegarde le mode de thème sous forme de chaîne
}


  // Cette méthode permet de récupérer la langue stockée
  Future<String> languageCode() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('languageCode') ?? 'fr';  // Si aucune langue n'est définie, retourne 'fr'
  }

Future<void> updateLanguage(String languageCode) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('languageCode', languageCode);  // Sauvegarde la langue
}

}
