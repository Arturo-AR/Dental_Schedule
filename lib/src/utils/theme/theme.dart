import 'package:dental_schedule/src/utils/theme/widget_themes/appbar_theme.dart';
import 'package:dental_schedule/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:dental_schedule/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:dental_schedule/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:dental_schedule/src/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AAppTheme {
  AAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: ATextTheme.lightTextTheme,
    appBarTheme: AAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: AElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ATextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: ATextTheme.darkTextTheme,
    appBarTheme: AAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: AElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ATextFormFieldTheme.darkInputDecorationTheme,
  );
}