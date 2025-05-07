import 'package:distribution_mall_flutter/utils/keyboard.dart';
import 'package:flutter/material.dart';

class ClickDisMiss extends StatelessWidget {
  final Widget child;

  const ClickDisMiss({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          KeyboardUtils.hideByContext(context);
        },
        behavior: HitTestBehavior.opaque,
        child: child);
  }
}
