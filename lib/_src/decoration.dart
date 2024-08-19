import 'dart:ui';

import 'package:flutter/widgets.dart';

extension DecorationExtension on Widget {
  /// Wraps this widget with an [Opacity] widget.
  Widget opacity(
    double opacity, {
    bool alwaysIncludeSemantics = false,
  }) =>
      Opacity(
        opacity: opacity,
        alwaysIncludeSemantics: alwaysIncludeSemantics,
        child: this,
      );

  /// Wraps this widget with a [ColoredBox] widget.
  Widget backgroundColor(Color color) => ColoredBox(
        color: color,
        child: this,
      );

  /// Wraps this widget with a [DecoratedBox] widget.
  Widget decoration(
    Decoration decoration, {
    DecorationPosition position = DecorationPosition.background,
  }) =>
      DecoratedBox(
        decoration: decoration,
        position: position,
        child: this,
      );

  /// Wraps this widget with a [BackdropFilter] widget.
  Widget backdropFilter(
    ImageFilter filter, {
    BlendMode blendMode = BlendMode.srcOver,
  }) =>
      BackdropFilter(
        filter: filter,
        blendMode: blendMode,
        child: this,
      );
}
