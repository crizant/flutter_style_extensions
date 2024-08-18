import 'package:flutter/material.dart';

extension ThemingExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  TextTheme get textTheme => theme.textTheme;

  T themeExtension<T>() => theme.extension<T>()!;
}
