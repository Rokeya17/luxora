import 'package:flutter/material.dart';

class LAppTextTheme {
  LAppTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
      headlineLarge: const TextStyle().copyWith(
          fontSize: 32, color: Colors.black, fontWeight: FontWeight.bold),
      headlineMedium: const TextStyle().copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      labelLarge: const TextStyle().copyWith(
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      labelMedium: const TextStyle().copyWith(
        color: Colors.black.withOpacity(0.5),
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      titleSmall: const TextStyle(
          color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal),
      titleMedium: const TextStyle(
          color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
      titleLarge: const TextStyle(
        color: Colors.black,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ));
  static TextTheme darkTextTheme = TextTheme(
      headlineLarge: const TextStyle().copyWith(
          fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),
      headlineMedium: const TextStyle().copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      labelLarge: const TextStyle().copyWith(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      labelMedium: const TextStyle().copyWith(
        color: Colors.white.withOpacity(0.5),
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      titleSmall: const TextStyle(
          color: Colors.white, fontSize: 12, fontWeight: FontWeight.normal),
      titleMedium: const TextStyle(
          color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
      titleLarge: const TextStyle(
        color: Colors.white,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ));
}
