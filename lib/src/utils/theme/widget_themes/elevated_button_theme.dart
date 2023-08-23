import 'package:dental_schedule/src/constants/colors.dart';
import 'package:flutter/material.dart';

/* -- Light & Dark Elevated Button Themes -- */
class AElevatedButtonTheme {
  AElevatedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightElevatedButtonTheme  = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: aWhiteColor,
      backgroundColor: aPrimaryColor,
      side: const BorderSide(color: aPrimaryColor),
      padding: const EdgeInsets.symmetric(vertical: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: aDarkColor,
      backgroundColor: aPrimaryColor,
      side: const BorderSide(color: aPrimaryColor),
      padding: const EdgeInsets.symmetric(vertical: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
  );
}
