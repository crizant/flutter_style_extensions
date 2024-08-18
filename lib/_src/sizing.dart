import 'package:flutter/widgets.dart';

extension SizingExtension on Widget {
  Widget size(Size size) => SizedBox.fromSize(
        size: size,
        child: this,
      );

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

  Widget aspectRatio(double aspectRatio) => AspectRatio(
        aspectRatio: aspectRatio,
        child: this,
      );

  Widget flexible({
    int flex = 1,
    FlexFit fit = FlexFit.loose,
  }) =>
      Flexible(
        flex: flex,
        fit: fit,
        child: this,
      );

  Widget expanded({int flex = 1}) => Expanded(
        flex: flex,
        child: this,
      );

  Widget constrained(BoxConstraints constraints) => ConstrainedBox(
        constraints: constraints,
        child: this,
      );
}
