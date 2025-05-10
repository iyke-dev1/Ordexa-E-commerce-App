import 'package:e_commerce_app/utils/themes/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/textfield_theme.dart';

class MyAppTheme {
  MyAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: MyTextTheme.lightTexTheme,
    chipTheme: MyChipTheme.lightChipTheme,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    checkboxTheme: MyCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: MyBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: MyTextField.lightInputDecorationTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlinedButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Poppins",
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: MyTextTheme.darkTexTheme,
      chipTheme: MyChipTheme.darkChipTheme,
      appBarTheme: MyAppBarTheme.darkAppBarTheme,
      checkboxTheme: MyCheckBoxTheme.darkCheckboxTheme,
      bottomSheetTheme: MyBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: MyTextField.darkInputDecorationTheme,
      outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButtonTheme,
  );
}