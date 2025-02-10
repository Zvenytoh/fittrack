import 'package:flutter/material.dart';
import 'settings_service.dart';
import 'model/settings.dart'; // Import du modèle Settings

/// Un contrôleur qui permet aux widgets d’accéder aux paramètres utilisateur
/// et de les mettre à jour en utilisant le `SettingsService`.
class SettingsController with ChangeNotifier {
  SettingsController(this._settingsService);

  // Service qui gère la persistance
  final SettingsService _settingsService;

  // Stocke tous les paramètres dans un seul objet Settings
  late Settings _settings;

  // Getters pour accéder aux paramètres
  ThemeMode get themeMode => _settings.themeMode;
  String get languageCode => _settings.languageCode;
  Locale get locale => Locale(_settings.languageCode);

  /// Charge tous les paramètres utilisateur depuis le `SettingsService`.
  Future<void> loadSettings() async {
    _settings = await _settingsService.loadSettings();
    
    debugPrint('Settings Loaded: ThemeMode=${_settings.themeMode}, Language=${_settings.languageCode}');

    notifyListeners(); // Notifie les widgets qui écoutent ce contrôleur
  }

  /// Met à jour et sauvegarde le mode de thème sélectionné par l'utilisateur.
  Future<void> updateThemeMode(ThemeMode newThemeMode) async {
    if (newThemeMode == _settings.themeMode) return; // Évite les mises à jour inutiles

    _settings = _settings.copyWith(themeMode: newThemeMode);
    debugPrint('Theme updated: ${_settings.themeMode}');

    notifyListeners();
    await _settingsService.saveSettings(_settings);
  }

  /// Met à jour et sauvegarde la langue sélectionnée par l'utilisateur.
  Future<void> updateLanguage(String newLanguageCode) async {
    if (newLanguageCode == _settings.languageCode) return; // Évite les mises à jour inutiles

    _settings = _settings.copyWith(languageCode: newLanguageCode);
    debugPrint('Language updated: ${_settings.languageCode}');

    notifyListeners();
    await _settingsService.saveSettings(_settings);
  }
}
