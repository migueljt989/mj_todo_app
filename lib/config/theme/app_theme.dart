import 'package:flutter/material.dart';

const seedColor = Color(0xFF1e81b0);

class AppTheme {

  final bool isDarkMode;

  AppTheme({required this.isDarkMode});

  ThemeData getTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: seedColor,
      listTileTheme: const ListTileThemeData(iconColor: seedColor)
      );
  }
}
