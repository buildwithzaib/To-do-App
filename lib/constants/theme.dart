import 'package:flutter/material.dart';

// ThemeData Lightmode = ThemeData{
//   brightness: Brightness.light,
// };
// ThemeData darkmode = ThemeData{
//   brightness: Brightness.dark,
// };

final ThemeData lightmode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: Colors.grey,
      primary: Colors.grey.shade400,
    ));

final ThemeData darkmode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade900,
    primary: Colors.grey.shade700,
  ),
);
