import 'package:flutter/widgets.dart';

extension InteractionExtension on Widget {
  Widget ignorePointer(bool ignoring) => IgnorePointer(
        ignoring: ignoring,
        child: this,
      );
}
