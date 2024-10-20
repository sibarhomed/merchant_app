import 'package:flutter/material.dart';
import 'package:merchant_app/utils/constants_colors.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      fontFamily: 'ElMessiri',
      scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
      textTheme: TextTheme(
        bodyLarge: TextStyle(fontFamily: 'ElMessiri'),
        bodyMedium: TextStyle(fontFamily: 'ElMessiri'),
        displayLarge: TextStyle(fontFamily: 'ElMessiri'),
        displayMedium: TextStyle(fontFamily: 'ElMessiri'),
        displaySmall: TextStyle(fontFamily: 'ElMessiri'),
        headlineMedium: TextStyle(fontFamily: 'ElMessiri'),
        headlineSmall: TextStyle(fontFamily: 'ElMessiri'),
        titleLarge: TextStyle(fontFamily: 'ElMessiri'),
        titleMedium: TextStyle(fontFamily: 'ElMessiri'),
        titleSmall: TextStyle(fontFamily: 'ElMessiri'),
        labelLarge: TextStyle(fontFamily: 'ElMessiri'),
        bodySmall: TextStyle(fontFamily: 'ElMessiri'),
        labelSmall: TextStyle(fontFamily: 'ElMessiri'),
      ),
    );
  }
}
