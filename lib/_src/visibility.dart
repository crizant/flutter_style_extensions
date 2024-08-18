import 'package:flutter/widgets.dart';

extension VisibilityExtension on Widget {
  Widget visible(
    bool visible, {
    Widget replacement = const SizedBox.shrink(),
    bool maintainState = false,
    bool maintainAnimation = false,
    bool maintainSize = false,
    bool maintainSemantics = false,
    bool maintainInteractivity = false,
  }) =>
      Visibility(
        visible: visible,
        replacement: replacement,
        maintainState: maintainState,
        maintainAnimation: maintainAnimation,
        maintainSize: maintainSize,
        maintainSemantics: maintainSemantics,
        maintainInteractivity: maintainInteractivity,
        child: this,
      );

  Widget offstage(bool offstage) => Offstage(
        offstage: offstage,
        child: this,
      );
}
