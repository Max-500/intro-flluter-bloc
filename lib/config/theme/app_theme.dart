import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData getTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.blue,
    listTileTheme: const ListTileThemeData(
      iconColor: Colors.blue,

    )
  );

}