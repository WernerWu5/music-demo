import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:distribution_mall_flutter/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EPListItem extends StatelessWidget {
  final bool showLeftIcon;
  final Widget? leftIcon;
  final Widget? leftIconPadding;
  final Widget? center;
  final double? height;
  final EdgeInsets padding;
  const EPListItem({
    super.key,
    this.showLeftIcon = false,
    this.leftIcon,
    this.leftIconPadding,
    this.center,
    this.height,
    this.padding = const EdgeInsets.symmetric(horizontal: EdgeConstant.edge20),
  });

  getCenter() {
    if (center == null) {
      return Expanded(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.current.update,
            style: const TextStyle(
                color: ColorConstant.black, fontSize: FontConstant.f14),
          ),
          Text(
            S.current.description,
            style: const TextStyle(
                color: ColorConstant.grey888, fontSize: FontConstant.f12),
          )
        ],
      ));
    }
    return center;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: padding,
        height: height,
        child: Row(
          children: [
            Visibility(
              visible: showLeftIcon,
              child: Padding(
                padding: const EdgeInsets.only(right: 14),
                child: leftIcon,
              ),
            ),
            getCenter(),
            const Icon(
              CupertinoIcons.right_chevron,
              color: Color(0x747373FF),
              size: 12,
            )
          ],
        ),
      ),
    );
  }
}
