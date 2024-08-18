import 'package:flutter/widgets.dart';

extension TransformExtension on Widget {
  Widget transform(
    Matrix4 transform, {
    Offset? origin,
    AlignmentGeometry? alignment,
    bool transformHitTests = true,
    FilterQuality? filterQuality,
  }) =>
      Transform(
        transform: transform,
        origin: origin,
        alignment: alignment,
        transformHitTests: transformHitTests,
        filterQuality: filterQuality,
        child: this,
      );

  Widget flip({
    bool flipX = false,
    bool flipY = false,
    Offset? origin,
    bool transformHitTests = true,
    FilterQuality? filterQuality,
  }) =>
      Transform.flip(
        flipX: flipX,
        flipY: flipY,
        origin: origin,
        transformHitTests: transformHitTests,
        filterQuality: filterQuality,
        child: this,
      );

  Widget rotate(
    double angle, {
    Offset? origin,
    AlignmentGeometry? alignment = Alignment.center,
    bool transformHitTests = true,
    FilterQuality? filterQuality,
  }) =>
      Transform.rotate(
        angle: angle,
        origin: origin,
        filterQuality: filterQuality,
        alignment: alignment,
        transformHitTests: transformHitTests,
        child: this,
      );

  Widget scale(
    double scale, {
    Offset? origin,
    AlignmentGeometry? alignment = Alignment.center,
    bool transformHitTests = true,
    FilterQuality? filterQuality,
  }) =>
      Transform.scale(
        scale: scale,
        origin: origin,
        alignment: alignment,
        transformHitTests: transformHitTests,
        filterQuality: filterQuality,
        child: this,
      );

  Widget scaleX(
    double scaleX, {
    Offset? origin,
    AlignmentGeometry? alignment = Alignment.center,
    bool transformHitTests = true,
    FilterQuality? filterQuality,
  }) =>
      Transform.scale(
        scaleX: scaleX,
        origin: origin,
        alignment: alignment,
        transformHitTests: transformHitTests,
        filterQuality: filterQuality,
        child: this,
      );

  Widget scaleY(
    double scaleY, {
    Offset? origin,
    AlignmentGeometry? alignment = Alignment.center,
    bool transformHitTests = true,
    FilterQuality? filterQuality,
  }) =>
      Transform.scale(
        scaleY: scaleY,
        origin: origin,
        alignment: alignment,
        transformHitTests: transformHitTests,
        filterQuality: filterQuality,
        child: this,
      );

  Widget scaleXY(
    double scaleX,
    double scaleY, {
    Offset? origin,
    AlignmentGeometry? alignment = Alignment.center,
    bool transformHitTests = true,
    FilterQuality? filterQuality,
  }) =>
      Transform.scale(
        scaleX: scaleX,
        scaleY: scaleY,
        origin: origin,
        alignment: alignment,
        transformHitTests: transformHitTests,
        filterQuality: filterQuality,
        child: this,
      );
}
