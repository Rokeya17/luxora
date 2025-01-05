import 'package:flutter/material.dart';

class LElevatedbuttonTheme {
  LElevatedbuttonTheme._();
  static final lightElevatedbuttonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        elevation: 0,
        disabledBackgroundColor: Colors.grey,
        disabledForegroundColor: Colors.grey,
        backgroundColor: Colors.blue,
        side: const BorderSide(color: Colors.blue),
        padding: const EdgeInsets.symmetric(vertical: 18),
        textStyle: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
  );
  static final darkElevatedbuttonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        elevation: 0,
        disabledBackgroundColor: Colors.grey,
        disabledForegroundColor: Colors.grey,
        backgroundColor: Colors.blue,
        side: const BorderSide(color: Colors.blue),
        padding: const EdgeInsets.symmetric(vertical: 18),
        textStyle: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
  );
}
