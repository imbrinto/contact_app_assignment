import 'package:flutter/material.dart';

final lightMode = ThemeData.light().copyWith(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.cyanAccent,
    foregroundColor: Colors.black,
    titleTextStyle: TextStyle(
        color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
          color: Colors.black
      ),
      borderRadius: BorderRadius.circular(16),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
          color: Colors.black
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
      foregroundColor: Colors.black,
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      fixedSize: const Size(double.maxFinite, 40),
    )
  ),
  listTileTheme: const ListTileThemeData(
    subtitleTextStyle: TextStyle(
      color: Colors.grey,
    )
  ),
);
