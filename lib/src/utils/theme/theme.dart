import 'package:flutter/material.dart';
import 'package:login_app/src/utils/theme/widget_theme/elevated_button.dart';
import 'package:login_app/src/utils/theme/widget_theme/text_formfield_theme.dart';

import 'widget_theme/outlined_button.dart';
import 'widget_theme/text_theme.dart';

class GAppTheme {
  GAppTheme._(); //make the class private
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: HTextTheme.lightTextTheme,
      outlinedButtonTheme: HOutlinedButtontheme.lightOutlineButtonTheme,
      elevatedButtonTheme: HElevatedButtontheme.lightElevatedButtonTheme,
      inputDecorationTheme: HTextFormFieldTheme.lightInputDecorationTheme);

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: HTextTheme.darkTextTheme,
      outlinedButtonTheme: HOutlinedButtontheme.darkOutlineButtonTheme,
      elevatedButtonTheme: HElevatedButtontheme.darkElevatedButtonTheme,
      inputDecorationTheme: HTextFormFieldTheme.darkInputDecorationTheme);
}
