import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:distribution_mall_flutter/widgets/icon_button.dart';
import 'package:distribution_mall_flutter/widgets/ink_well_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EPNavigationItem extends StatefulWidget {
  final String? leftText;
  final String? rightText;
  final Widget rightIcon;
  final EdgeInsets padding;
  final double? leftTextWidth;
  final bool isLineNav;
  final Widget? customLeftChild;
  final Widget? customRightChild;
  final TextStyle leftTextStyle;
  final TextStyle rightTextStyle;
  final CrossAxisAlignment crossAxis;
  final double? height;
  final bool showRightIcon;
  final void Function()? onTap;

  const EPNavigationItem(
      {super.key,
      this.onTap,
      this.leftText,
      this.leftTextStyle =
          const TextStyle(color: Colors.black, fontSize: FontConstant.f15),
      this.rightTextStyle = const TextStyle(
          color: Color.fromRGBO(134, 141, 150, 1), fontSize: FontConstant.f127),
      this.rightText,
      this.padding = const EdgeInsets.all(EdgeConstant.edge20),
      this.isLineNav = false,
      this.crossAxis = CrossAxisAlignment.center,
      this.leftTextWidth,
      this.customLeftChild,
      this.customRightChild,
      this.height,
      this.showRightIcon = true,
      this.rightIcon = const Icon(CupertinoIcons.right_chevron,
          size: 14, color: Color.fromRGBO(162, 162, 162, 1))});

  @override
  State<EPNavigationItem> createState() {
    return NavigationItemState();
  }
}

class NavigationItemState extends State<EPNavigationItem> {
  Widget rowRender() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: widget.crossAxis,
      children: [
        widget.customLeftChild ??
            SizedBox(
              width: widget.leftTextWidth,
              child: Text(
                widget.leftText ?? '',
                style: widget.leftTextStyle,
              ),
            ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.customRightChild ?? const SizedBox.shrink(),
            widget.customRightChild == null && widget.rightText != null
                ? Container(
                    width: 240,
                    padding: const EdgeInsets.only(top: 1),
                    child: Text(
                      widget.rightText ?? '',
                      textAlign: TextAlign.end,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: widget.rightTextStyle,
                    ),
                  )
                : const SizedBox.shrink(),
            Visibility(
                visible: widget.showRightIcon,
                child: EPIconButton(onPressed: () {
                  if (!widget.isLineNav && widget.onTap is Function) {
                    widget.onTap!();
                    return true;
                  }
                }))
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.isLineNav
        ? EPInkWellView(
            height: widget.height,
            onPressed: widget.onTap,
            child: Padding(padding: widget.padding, child: rowRender()),
          )
        : rowRender();
  }
}
