import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLang = 'ar';
  ThemeMode currentTheme = ThemeMode.light;

  void changeLanguage(String newLang) {
    if (currentLang == newLang) {
      return;
    }
    currentLang = newLang;
    notifyListeners();
  }

  String getMainBackGround() {
    return isDark()
        ? 'assets/images/main_background_dark.png'
        : 'assets/images/main_background.png';
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  void changeTheme(ThemeMode newMode) {
    if (newMode == currentTheme) {
      return;
    }
    currentTheme = newMode;
    notifyListeners();
  }
}
