import 'dart:async';

import 'package:flutter/material.dart';
import 'package:distribution_mall_flutter/widgets/input_quantity/src/constant.dart';

/// default
const cRad = Radius.circular(4);

class BuildBtn extends StatelessWidget {
  /// icon widget
  final Widget? child;

  /// callback on tap
  final Function()? onTap;

  /// button plus or minus
  final bool isPlus;

  /// default button color
  final Color btnColor;

  /// shape border
  final BorderShapeBtn borderShape;

  /// start increasing value
  final void Function(Function? ontap) onStart;

  /// stop increasing value
  final VoidCallback onEndTime;

  /// orientation button
  final ButtonOrientation? orientation;

  /// widget style
  final QtyStyle qtyStyle;

  /// timer for longpress
  final Timer? time;

  final double? iconWidth;

  final double? iconHeight;

  final bool disable;

  const BuildBtn({
    super.key,
    this.borderShape = BorderShapeBtn.none,
    required this.isPlus,
    this.onTap,
    this.btnColor = Colors.teal,
    this.child,
    this.qtyStyle = QtyStyle.classic,
    this.orientation,
    this.time,
    this.iconWidth,
    this.iconHeight,
    this.disable = false,
    required this.onEndTime,
    required this.onStart,
  });

  @override
  Widget build(BuildContext context) {
    bool isCircleBorder = borderShape == BorderShapeBtn.circle;
    bool isSqborder = borderShape == BorderShapeBtn.square;

    switch (qtyStyle) {
      case QtyStyle.btnOnLeft:
        return GestureDetector(
          onLongPressStart: (details) => onStart.call(onTap),
          onLongPressEnd: (details) => onEndTime.call(),
          onTap: onTap,
          child: DecoratedBox(
            decoration: BoxDecoration(
                shape: isCircleBorder ? BoxShape.circle : BoxShape.rectangle,
                border: borderShape == BorderShapeBtn.none
                    ? null
                    : Border.all(
                        color: disable ? Colors.grey : btnColor, width: 1),
                // color: disable ? Colors.grey : Colors.grey,
                // width: 1),
                borderRadius: isCircleBorder
                    ? null
                    : setupBorderRadiusDefault(
                        isPlus: isPlus,
                        style: QtyStyle.btnOnLeft,
                        orientation:
                            orientation ?? ButtonOrientation.vertical)),
            child: child ??
                Padding(
                  padding:
                      // isSqborder ? 8.0 : 2.0
                      const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Icon(
                    isPlus ? Icons.add : Icons.remove,
                    size: 18,
                    color: disable ? Colors.grey : btnColor,
                  ),
                ),
          ),
        );
      case QtyStyle.btnOnRight:
        return GestureDetector(
          onLongPressStart: (details) => onStart.call(onTap),
          onLongPressEnd: (details) => onEndTime.call(),
          onTap: onTap,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: isCircleBorder ? BoxShape.circle : BoxShape.rectangle,
              border: borderShape == BorderShapeBtn.none
                  ? null
                  : Border.all(
                      color: disable ? Colors.grey : btnColor, width: 1),
              borderRadius: isCircleBorder
                  ? null
                  : setupBorderRadiusDefault(
                      isPlus: isPlus,
                      style: QtyStyle.btnOnRight,
                      orientation: orientation ?? ButtonOrientation.vertical),
            ),
            child: child ??
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: isSqborder ? 8.0 : 2.0),
                  child: Icon(
                    isPlus ? Icons.add : Icons.remove,
                    size: 18,
                    color: disable ? Colors.grey : btnColor,
                  ),
                ),
          ),
        );
      default:
        return GestureDetector(
          onLongPressStart: (details) => onStart.call(onTap),
          onLongPressEnd: (details) => onEndTime.call(),
          onTap: onTap,
          child: DecoratedBox(
            decoration: BoxDecoration(
                shape: borderShape == BorderShapeBtn.circle
                    ? BoxShape.circle
                    : BoxShape.rectangle,
                border: borderShape == BorderShapeBtn.none
                    ? null
                    : Border.all(
                        color: disable ? Colors.grey : btnColor, width: 1),
                borderRadius: isCircleBorder
                    ? null
                    : setupBorderRadiusDefault(
                        isPlus: isPlus,
                        orientation: ButtonOrientation.horizontal)),
            child: child ??
                Container(
                  width: iconWidth,
                  height: iconHeight,
                  decoration: BoxDecoration(
                    shape: borderShape == BorderShapeBtn.circle
                        ? BoxShape.circle
                        : BoxShape.rectangle,
                    border: borderShape == BorderShapeBtn.none
                        ? null
                        : Border.all(
                            color: const Color.fromRGBO(
                                222, 222, 222, 1), //Colors.black,,
                            width: 1),
                    color: disable
                        ? const Color.fromRGBO(244, 244, 244, 1)
                        : Colors.white,
                  ),
                  child: Icon(isPlus ? Icons.add : Icons.remove,
                      color: disable
                          ? const Color.fromRGBO(222, 222, 222, 1)
                          : btnColor),
                ),
          ),
        );
    }
  }
}

BorderRadius setupBorderRadiusDefault(
    {required ButtonOrientation orientation,
    required bool isPlus,
    QtyStyle? style}) {
  if (orientation == ButtonOrientation.horizontal) {
    return BorderRadius.only(
        topLeft: isPlus ? Radius.zero : cRad,
        bottomLeft: isPlus ? Radius.zero : cRad,
        topRight: isPlus ? cRad : Radius.zero,
        bottomRight: isPlus ? cRad : Radius.zero);
  } else {
    if (style == QtyStyle.btnOnRight) {
      return BorderRadius.only(
        topRight: isPlus ? cRad : Radius.zero,
        bottomRight: isPlus ? Radius.zero : cRad,
      );
    } else {
      return BorderRadius.only(
        topLeft: isPlus ? cRad : Radius.zero,
        bottomLeft: isPlus ? Radius.zero : cRad,
      );
    }
  }
}
