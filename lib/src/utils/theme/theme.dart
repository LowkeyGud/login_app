import 'package:flutter/material.dart';
import 'widget_theme/text_theme.dart';

class GAppTheme {
  GAppTheme._(); //make the class private
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: GTextTheme.lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: GTextTheme.darkTextTheme,
  );
}
