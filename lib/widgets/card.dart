import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:distribution_mall_flutter/widgets/ink_well_view.dart';
import 'package:flutter/material.dart';

class EPCard extends StatelessWidget {
  final Widget child;
  final Widget footerChild;
  final EdgeInsets padding;
  final EdgeInsets? margin;
  final bool enableClickEffect;
  final Function()? onPressed;
  final DecorationImage? image;
  final double? width;
  final double? height;
  final double minHeight;

  const EPCard(
      {super.key,
      required this.child,
      this.footerChild = const SizedBox.shrink(),
      this.padding = EdgeInsets.zero,
      this.margin = const EdgeInsets.symmetric(horizontal: EdgeConstant.edge20),
      this.enableClickEffect = false,
      this.image,
      this.onPressed,
      this.width,
      this.height,
      this.minHeight = 0});

  Widget childRender() {
    return enableClickEffect
        ? EPInkWellView(
            onPressed: onPressed ?? () {},
            image: image,
            child: Padding(
              padding: padding,
              child: child,
            ),
            footerChild: footerChild)
        : Padding(
            padding: padding,
            child: child,
          );
  }

  @override
  Widget build(BuildContext context) {
    // return (enableClickEffect ?? false)
    //     ? EPInkWellView(onPressed: onPressed ?? () {}, child: childRender())
    //     : childRender();
    return Container(
        width: width,
        height: height,
        margin: margin,
        constraints: BoxConstraints(
          minHeight: minHeight,
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  offset: Offset(0, 2),
                  spreadRadius: 1,
                  blurRadius: 6)
            ]),
        child: childRender());
  }
}
