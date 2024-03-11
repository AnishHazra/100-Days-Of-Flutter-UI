import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  //initial we have light mode
  var _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;

  void setTheme(themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}
