import 'package:flutter/widgets.dart';

extension InteractionExtension on Widget {
  /// Wraps this widget with an [IgnorePointer] widget.
  Widget ignorePointer(bool ignoring) => IgnorePointer(
        ignoring: ignoring,
        child: this,
      );
}
