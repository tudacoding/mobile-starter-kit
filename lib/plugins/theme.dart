import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum AppThemeKeys { light, dark }

final Map<AppThemeKeys, ThemeData> _themes = {
  AppThemeKeys.light: ThemeData(
    primaryColor: Colors.white,
    primaryColorLight: Colors.white,
    primaryColorDark: Colors.black,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white, foregroundColor: Colors.red),
    brightness: Brightness.light,
  ),
  AppThemeKeys.dark: ThemeData(
    primaryColor: Colors.black,
    primaryColorLight: Colors.black,
    primaryColorDark: Colors.white,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
    brightness: Brightness.dark,
  ),
};

class AppTheme extends ChangeNotifier {
  static AppTheme of(BuildContext context, {bool listen = false}) =>
      Provider.of<AppTheme>(context, listen: listen);

  AppThemeKeys _themeKey = AppThemeKeys.dark;

  ThemeData? get currentTheme => _themes[_themeKey];
  AppThemeKeys get currentThemeKey => _themeKey;

  void setTheme(AppThemeKeys themeKey) {
    _themeKey = themeKey;
    notifyListeners();
  }

  void switchTheme() {
    if (_themeKey == AppThemeKeys.dark) {
      _themeKey = AppThemeKeys.light;
    } else {
      _themeKey = AppThemeKeys.dark;
    }
    notifyListeners();
  }
}
