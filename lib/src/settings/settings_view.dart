import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:country_flags/country_flags.dart';
import 'settings_controller.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key, required this.controller});

  static const routeName = '/settings';

  final SettingsController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settingsTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Theme Dropdown Button (déjà existant)
            DropdownButton<ThemeMode>(
              value: controller.themeMode,
              onChanged: controller.updateThemeMode,
              items: [
                DropdownMenuItem(
                  value: ThemeMode.system,
                  child: Text(AppLocalizations.of(context)!.systemTheme),
                ),
                DropdownMenuItem(
                  value: ThemeMode.light,
                  child: Text(AppLocalizations.of(context)!.lightTheme),
                ),
                DropdownMenuItem(
                  value: ThemeMode.dark,
                  child: Text(AppLocalizations.of(context)!.darkTheme),
                ),
              ],
            ),
            
            // Language Dropdown Button avec icônes de drapeaux
            DropdownButton<String>(
              value: controller.languageCode,
              onChanged: (newLanguage) {
                if (newLanguage != null) {
                  controller.updateLanguage(newLanguage);
                }
              },
              items: [
                DropdownMenuItem(
                  value: 'en',
                  child: Row(
                    children: [
                      // Icône pour l'anglais (Royaume-Uni)
                      CountryFlag.fromCountryCode('US'),
                      const SizedBox(width: 8),
                      Text('English'),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: 'fr',
                  child: Row(
                    children: [
                      // Icône pour le français (France)
                      CountryFlag.fromCountryCode('FR'),
                      const SizedBox(width: 8),
                      Text('Français'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
