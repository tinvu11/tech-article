import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: Colors.black,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      surface: Colors.white,
      onSurface: Colors.black,
      primary: Colors.black,
      onPrimary: Colors.white,
      secondary: Colors.grey.shade300,
      onSecondary: Colors.grey.shade700,
      error: Colors.redAccent,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    primaryColor: Colors.white,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Color(0xFF1A1A1A),
    colorScheme: ColorScheme.dark(
      surface: Color(0xFF1A1A1A),
      primary: Colors.white,
      onPrimary: Colors.black,
      secondary: Colors.grey.shade800,
      onSecondary: Colors.grey.shade200,
      error: Colors.redAccent,
      outline: Color(0xFF444444),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    ),
  );
}
