import 'package:flutter/material.dart';
import 'package:luxora/utils/theme/customs_theme/appbar_theme.dart';
import 'package:luxora/utils/theme/customs_theme/checkoutbox_theme.dart';
import 'package:luxora/utils/theme/customs_theme/chip_theme.dart';
import 'package:luxora/utils/theme/customs_theme/elevatedbutton_theme.dart';
import 'package:luxora/utils/theme/customs_theme/textfied_theme.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blueGrey,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: LAppbarTheme.lightAppbarTheme,
    inputDecorationTheme: LTextfromfieldTheme.lightInputdecorationtheme,
    elevatedButtonTheme: LElevatedbuttonTheme.lightElevatedbuttonTheme,
    checkboxTheme: LCheckoutboxTheme.lightCheckboxtheme,chipTheme: LChipTheme.lightChipTheme,
  

  );
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.blueGrey,
      appBarTheme: LAppbarTheme.darkAppbarTheme,
      inputDecorationTheme: LTextfromfieldTheme.darkInputdecorationtheme,
      elevatedButtonTheme: LElevatedbuttonTheme.darkElevatedbuttonTheme,
      checkboxTheme: LCheckoutboxTheme.darkCheckboxtheme,
      chipTheme: LChipTheme.darkChipTheme,
      );
}
