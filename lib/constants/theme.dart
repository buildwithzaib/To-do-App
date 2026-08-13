import 'package:flutter/material.dart';

// ThemeData Lightmode = ThemeData{
//   brightness: Brightness.light,
// };
// ThemeData darkmode = ThemeData{
//   brightness: Brightness.dark,
// };

final ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      surface: Colors.grey,
      primary: Colors.grey.shade400,
    ));

final ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    primary: Colors.grey.shade700,
  ),
);
