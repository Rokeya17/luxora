import 'package:flutter/material.dart';

class LChipTheme {
  LChipTheme._();
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.5),
    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    checkmarkColor: Colors.black,

  );  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.5),
    padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    labelStyle:const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    checkmarkColor: Colors.black,
    
  );
}