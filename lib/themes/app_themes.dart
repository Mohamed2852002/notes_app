import 'package:flutter/material.dart';

class AppThemes {
  static final appTheme = ThemeData(
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
