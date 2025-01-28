import 'package:et_app/utils/theme/customTheme/appbar_theme.dart';
import 'package:et_app/utils/theme/customTheme/bottom_sheet_theme.dart';
import 'package:et_app/utils/theme/customTheme/checkbox_theme.dart';
import 'package:et_app/utils/theme/customTheme/chip_theme.dart';
import 'package:et_app/utils/theme/customTheme/elevated_button_theme.dart';
import 'package:et_app/utils/theme/customTheme/outlined_button_theme.dart';
import 'package:et_app/utils/theme/customTheme/text_field_theme.dart';
import 'package:et_app/utils/theme/customTheme/text_theme.dart';
import 'package:flutter/material.dart';

class EtAppTheme {
  EtAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.blue,
      textTheme: EtTextTheme.lightTextTheme,
      elevatedButtonTheme: EtElevatedbuttonTheme.lightElevatedButtonTheme,
      checkboxTheme: EtCheckboxTheme.lightCheckboxTheme,
      chipTheme: EtChipTheme.lightChipTheme,
      appBarTheme: EtAppBarTheme.lightAppBartheme,
      outlinedButtonTheme: EtOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: EtTextFormFieldTheme.lightInputDecorationTheme,
      bottomSheetTheme: EtBottomSheetTheme.lightBottomSheetTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.blue,
      textTheme: EtTextTheme.darkTextTheme,
      elevatedButtonTheme: EtElevatedbuttonTheme.darktElevatedButtonTheme,
      checkboxTheme: EtCheckboxTheme.darkCheckboxTheme,
      chipTheme: EtChipTheme.darkChipTheme,
      appBarTheme: EtAppBarTheme.darkAppBartheme,
      outlinedButtonTheme: EtOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: EtTextFormFieldTheme.darkInputDecorationTheme,
      bottomSheetTheme: EtBottomSheetTheme.darkBottomSheetTheme);
}
