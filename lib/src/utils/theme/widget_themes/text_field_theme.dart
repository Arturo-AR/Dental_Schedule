import 'package:dental_schedule/src/constants/colors.dart';
import 'package:flutter/material.dart';

class ATextFormFieldTheme {
  ATextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    prefixIconColor: aPrimaryColor,
    floatingLabelStyle: const TextStyle(color: aPrimaryColor),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(width: 2, color: aPrimaryColor),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    prefixIconColor: aPrimaryColor,
    floatingLabelStyle: const TextStyle(color: aPrimaryColor),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(width: 2, color: aPrimaryColor),
    ),
  );
}
