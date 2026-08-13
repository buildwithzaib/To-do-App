import 'package:flutter/material.dart';
import 'package:todo_appp/constants/theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;

  static get lightMode => null;

  get darkData => null;

  set ThemeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      ThemeData = darkData;
    } else {
      ThemeData = lightMode;
    }
  }
}
