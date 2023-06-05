import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/sizes.dart';

class HOutlinedButtontheme {
  HOutlinedButtontheme._();
  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    shape: const RoundedRectangleBorder(),
    foregroundColor: hDarkColor,
    side: const BorderSide(
      color: hDarkColor,
      width: 2,
    ),
    padding: const EdgeInsets.symmetric(vertical: hButtonHeight),
  ));

  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: hWhiteColor,
      side: const BorderSide(
        color: hWhiteColor,
        width: 2,
      ),
      padding: const EdgeInsets.symmetric(vertical: hButtonHeight),
    ),
  );
}
