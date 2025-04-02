import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Color(0xFF9B2F94), // Magenta Purple
    colorScheme: ColorScheme.light(
      primary: Color(0xFF9B2F94), // Magenta Purple
      secondary: Color(0xFFD97706), // Warm Gold
      surface: Color(0xFFF7F5F6), // Card Background
      onPrimary: Colors.white, // Text on Primary
      onSecondary: Colors.black, // Text on Secondary
      onSurface: Colors.black, // Text on Surface
      error: Colors.red,
    ),
    scaffoldBackgroundColor: Colors.white70, // Light Gray
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF9B2F94), // Magenta Purple
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Color(0xFFD97706), // Warm Gold
      textTheme: ButtonTextTheme.primary,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Color(0xFF8A1C7C), // Deep Magenta
    colorScheme: ColorScheme.dark(
      primary: Color(0xFF8A1C7C), // Deep Magenta
      secondary: Color(0xFFFF8C42), // Vibrant Orange
      surface: Color(0xFF2A2A2A), // Card Background
      onPrimary: Colors.white, // Text on Primary
      onSecondary: Colors.white, // Text on Secondary
      onSurface: Colors.white, // Text on Surface
      error: Colors.redAccent,
    ),
    scaffoldBackgroundColor: Colors.black87, // Dark Gray
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF8A1C7C), // Deep Magenta
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Color(0xFFFF8C42), // Vibrant Orange
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
