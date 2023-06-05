import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/sizes.dart';

class HElevatedButtontheme {
  HElevatedButtontheme._();
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    shape: const RoundedRectangleBorder(),
    foregroundColor: hWhiteColor,
    backgroundColor: hDarkColor,
    side: const BorderSide(color: hDarkColor),
    padding: const EdgeInsets.symmetric(vertical: hButtonHeight),
  ));

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: hDarkColor,
      backgroundColor: hWhiteColor,
      side: const BorderSide(color: hDarkColor),
      padding: const EdgeInsets.symmetric(vertical: hButtonHeight),
    ),
  );
}
