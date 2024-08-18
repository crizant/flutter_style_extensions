import 'dart:ui';

import 'package:flutter/widgets.dart';

extension DecorationExtension on Widget {
  Widget opacity(
    double opacity, {
    bool alwaysIncludeSemantics = false,
  }) =>
      Opacity(
        opacity: opacity,
        alwaysIncludeSemantics: alwaysIncludeSemantics,
        child: this,
      );

  Widget backgroundColor(Color color) => ColoredBox(
        color: color,
        child: this,
      );

  Widget decoration(
    Decoration decoration, {
    DecorationPosition position = DecorationPosition.background,
  }) =>
      DecoratedBox(
        decoration: decoration,
        position: position,
        child: this,
      );

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
