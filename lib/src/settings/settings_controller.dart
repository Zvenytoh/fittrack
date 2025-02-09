import 'package:flutter/material.dart';
import 'settings_service.dart';

/// A class that many Widgets can interact with to read user settings, update
/// user settings, or listen to user settings changes.
///
/// Controllers glue Data Services to Flutter Widgets. The SettingsController
/// uses the SettingsService to store and retrieve user settings.
class SettingsController with ChangeNotifier {
  SettingsController(this._settingsService);
  
  late String _languageCode;
  late ThemeMode _themeMode;

  // Services
  final SettingsService _settingsService;

  // Read-only properties
  ThemeMode get themeMode => _themeMode;
  String get languageCode => _languageCode;

  /// Returns the Locale based on the current language code
  Locale get locale => Locale(_languageCode);

  /// Load the user's settings from the SettingsService.
  Future<void> loadSettings() async {
    _themeMode = await _settingsService.themeMode();
    _languageCode = await _settingsService.languageCode();  // Charger la langue depuis le SettingsService
    notifyListeners();  // Notifie les widgets qui écoutent ce controller
  }

  /// Update and persist the ThemeMode based on the user's selection.
  Future<void> updateThemeMode(ThemeMode? newThemeMode) async {
    if (newThemeMode == null) return;

    if (newThemeMode == _themeMode) return;  // Pas de changement si la valeur est identique

    _themeMode = newThemeMode;
    notifyListeners();  // Notify listeners about the change

    await _settingsService.updateThemeMode(newThemeMode);  // Sauvegarder dans le SettingsService
  }

  /// Update and persist the language based on the user's selection.
  Future<void> updateLanguage(String newLanguageCode) async {
    if (newLanguageCode == _languageCode) return;  // Si la langue est déjà celle sélectionnée, ne rien faire

    _languageCode = newLanguageCode;
    notifyListeners();  // Notifie les widgets pour qu'ils soient reconstruits avec la nouvelle langue

    await _settingsService.updateLanguage(newLanguageCode);  // Sauvegarder la langue dans le SettingsService
  }
}
