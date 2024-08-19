import 'package:flutter/widgets.dart';

extension SizingExtension on Widget {
  /// Wrap the widget with a [SizedBox] widget.
  Widget size(Size size) => SizedBox.fromSize(
        size: size,
        child: this,
      );

  /// Wrap the widget in a [FractionallySizedBox] widget.
  Widget fractionallySized({
    Alignment alignment = Alignment.center,
    double widthFactor = 1.0,
    double heightFactor = 1.0,
  }) =>
      FractionallySizedBox(
        alignment: alignment,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: this,
      );

  /// Wrap the widget in a [FittedBox] widget.
  Widget fit({
    BoxFit fit = BoxFit.contain,
    Alignment alignment = Alignment.center,
    Clip clipBehavior = Clip.none,
  }) =>
      FittedBox(
        fit: fit,
        alignment: alignment,
        clipBehavior: clipBehavior,
        child: this,
      );

  /// Wrap the widget in an [AspectRatio] widget.
  Widget aspectRatio(double aspectRatio) => AspectRatio(
        aspectRatio: aspectRatio,
        child: this,
      );

  /// Wrap the widget in a [Flexible] widget.
  Widget flexible({
    int flex = 1,
    FlexFit fit = FlexFit.loose,
  }) =>
      Flexible(
        flex: flex,
        fit: fit,
        child: this,
      );

  /// Wrap the widget in an [Expanded] widget.
  Widget expanded({int flex = 1}) => Expanded(
        flex: flex,
        child: this,
      );

  /// Wrap the widget in a [ConstrainedBox] widget.
  Widget constrained(BoxConstraints constraints) => ConstrainedBox(
        constraints: constraints,
        child: this,
      );
}
