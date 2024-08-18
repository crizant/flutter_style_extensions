import 'package:flutter/widgets.dart';

extension ClipingExtension on Widget {
  Widget clipRect({
    CustomClipper<Rect>? clipper,
    Clip clipBehavior = Clip.hardEdge,
  }) =>
      ClipRect(
        clipBehavior: clipBehavior,
        clipper: clipper,
        child: this,
      );

  Widget clipOval({
    CustomClipper<Rect>? clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) =>
      ClipOval(
        clipBehavior: clipBehavior,
        clipper: clipper,
        child: this,
      );

  Widget clipPath(
    CustomClipper<Path> clipper, {
    Clip clipBehavior = Clip.antiAlias,
  }) =>
      ClipPath(
        clipBehavior: clipBehavior,
        clipper: clipper,
        child: this,
      );

  Widget clipRRect({
    BorderRadiusGeometry borderRadius = BorderRadius.zero,
    CustomClipper<RRect>? clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) =>
      ClipRRect(
        borderRadius: borderRadius,
        clipBehavior: clipBehavior,
        clipper: clipper,
        child: this,
      );
}
