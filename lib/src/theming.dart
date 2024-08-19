import 'package:flutter/material.dart';

extension ThemingExtension on BuildContext {
  /// Returns the current [ThemeData].
  ThemeData get theme => Theme.of(this);

  /// Returns the [ColorScheme] of the current [ThemeData].
  ColorScheme get colorScheme => theme.colorScheme;

  /// Returns the [TextTheme] of the current [ThemeData].
  TextTheme get textTheme => theme.textTheme;

  /// Returns the [ThemeExtension<T>] of the current [ThemeData].
  T themeExtension<T>() => theme.extension<T>()!;
}
