import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  ThemeData get themeData => Theme.of(this);
  TextTheme get textTheme => themeData.textTheme;
  ColorScheme get colorScheme => themeData.colorScheme;
  Color get primary => colorScheme.primary;
  Color get secondary => colorScheme.secondary;
}

extension MediaQueryExtension on BuildContext {
  EdgeInsets get paddingOf => MediaQuery.paddingOf(this);
}
