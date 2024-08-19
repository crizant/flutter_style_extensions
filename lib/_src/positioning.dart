import 'package:flutter/widgets.dart';

extension PositioningExtension on Widget {
  /// Wraps this widget with a [Padding] widget.
  Widget margin(EdgeInsetsGeometry margin) => Padding(
        padding: margin,
        child: this,
      );

  /// Wraps this widget with an [Align] widget.
  Widget align(
    Alignment alignment, {
    double? widthFactor,
    double? heightFactor,
  }) =>
      Align(
        alignment: alignment,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: this,
      );

  /// Wraps this widget with a [Center] widget.
  Widget center({double? widthFactor, double? heightFactor}) => Center(
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: this,
      );

  /// Wraps this widget with a [Positioned] widget.
  Widget position({
    double? top,
    double? right,
    double? bottom,
    double? left,
    double? width,
    double? height,
  }) =>
      Positioned(
        top: top,
        right: right,
        bottom: bottom,
        left: left,
        width: width,
        height: height,
        child: this,
      );

  /// Wraps this widget with a [Positioned.fill] widget.
  Widget fillPosition({
    double? left = 0.0,
    double? top = 0.0,
    double? right = 0.0,
    double? bottom = 0.0,
  }) =>
      Positioned.fill(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
        child: this,
      );

  /// Wraps this widget with a [Positioned.directional] widget.
  Widget directionalPosition(
    TextDirection textDirection, {
    double? start,
    double? top,
    double? end,
    double? bottom,
    double? width,
    double? height,
  }) =>
      Positioned.directional(
        textDirection: textDirection,
        start: start,
        top: top,
        end: end,
        bottom: bottom,
        width: width,
        height: height,
        child: this,
      );

  /// Wraps this widget with a [Positioned.fromRect] widget.
  Widget positionFromRect(Rect rect) => Positioned.fromRect(
        rect: rect,
        child: this,
      );

  /// Wraps this widget with a [Positioned.fromRelativeRect] widget.
  Widget positionFromRelativeRect(RelativeRect rect) =>
      Positioned.fromRelativeRect(
        rect: rect,
        child: this,
      );
}
