import 'package:flutter/material.dart';

ThemeData luniiTheme = ThemeData(
  colorScheme:
      ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 56, 134, 244)),
  buttonTheme: const ButtonThemeData(
    height: 24,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide.none),
    filled: true,
    fillColor: Colors.white,
    isDense: true,
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  ),
  useMaterial3: true,
);
