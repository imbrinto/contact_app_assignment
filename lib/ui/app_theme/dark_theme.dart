import 'package:flutter/material.dart';

final darkMode = ThemeData.dark().copyWith(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    titleTextStyle: TextStyle(
        color: Colors.cyanAccent, fontSize: 20, fontWeight: FontWeight.w700),
  ),
  scaffoldBackgroundColor: Colors.black54,
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
          color: Colors.cyanAccent
      ),
      borderRadius: BorderRadius.circular(16),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
          color: Colors.cyanAccent
      ),
      borderRadius: BorderRadius.circular(16),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
          color: Colors.red
      ),
      borderRadius: BorderRadius.circular(16),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
          color: Colors.red
      ),
      borderRadius: BorderRadius.circular(16),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.cyanAccent,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        fixedSize: const Size(double.maxFinite, 40),
      )
  ),
  listTileTheme: const ListTileThemeData(
      subtitleTextStyle: TextStyle(
        color: Colors.grey,
      ),
  ),
);