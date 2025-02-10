import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'model/settings.dart';

class SettingsService {
  /// Charge tous les paramètres en une seule fois
  Future<Settings> loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    final themeString = prefs.getString('themeMode');
    final language = prefs.getString('languageCode') ?? 'fr';

    // Convertit la chaîne en ThemeMode
    final themeMode = ThemeMode.values.firstWhere(
      (e) => e.toString() == themeString,
      orElse: () => ThemeMode.system,
    );

    return Settings(themeMode: themeMode, languageCode: language);
  }

  /// Sauvegarde tous les paramètres en une seule fois
  Future<void> saveSettings(Settings settings) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('themeMode', settings.themeMode.toString());
    await prefs.setString('languageCode', settings.languageCode);
  }
}
