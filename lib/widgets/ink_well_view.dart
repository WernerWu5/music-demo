import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class EPInkWellView extends StatelessWidget {
  final Widget child;
  final Widget footerChild;
  final void Function()? onPressed;
  final void Function()? onHover;
  final BorderRadius borderRadius;
  final Color splashColor;
  final Color highlightColor;
  final Color backColor;
  final double? width, height;
  final EdgeInsets? padding;
  final EdgeInsets? wrapperPadding;
  final EdgeInsets? wrapperMargin;
  final BorderRadius inkBorderRadius;
  final BoxDecoration? decoration;
  final DecorationImage? image;

  const EPInkWellView(
      {super.key,
      required this.child,
      this.onPressed,
      this.footerChild = const SizedBox.shrink(),
      this.onHover,
      this.backColor = Colors.transparent,
      this.borderRadius = const BorderRadius.all(Radius.circular(5)),
      this.splashColor = const Color(0x40CCCCCC),
      this.highlightColor = const Color(0x40CCCCCC),
      this.width,
      this.height,
      this.padding,
      this.wrapperPadding,
      this.wrapperMargin,
      this.decoration,
      this.image,
      this.inkBorderRadius = const BorderRadius.all(Radius.zero)});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      // height: height,
      padding: wrapperPadding,
      margin: wrapperMargin,
      alignment: Alignment.center,
      decoration: (decoration != null)
          ? decoration
          : BoxDecoration(borderRadius: borderRadius, image: image),
      child: Stack(
        children: [
          child,
          Positioned.fill(
            child: Skeleton.ignore(
                child: Material(
              type: MaterialType.transparency,
              borderRadius: (decoration?.borderRadius != null)
                  ? decoration?.borderRadius
                  : borderRadius,
              child: Ink(
                padding: padding,
                color: backColor,
                child: InkWell(
                  splashColor: splashColor,
                  highlightColor: highlightColor,
                  borderRadius: borderRadius,
                  onTap: onPressed,
                ),
              ),
            )),
          ),
          footerChild
        ],
      ),
    );
  }
}
