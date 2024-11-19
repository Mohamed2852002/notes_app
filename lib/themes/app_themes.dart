import 'package:flutter/material.dart';

class AppThemes {
  static final appTheme = ThemeData(
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Colors.black,
    ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff57ebd9),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        shape: CircleBorder(),
        backgroundColor: Color(0xff57ebd9),
      ),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xff303030),
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xff303030),
        brightness: Brightness.dark,
      ),
      fontFamily: 'Poppins');
}
