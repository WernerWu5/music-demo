import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:flutter/material.dart';

class EPIconButton extends StatelessWidget {
  final Widget icon;
  final Function()? onPressed;
  final double width;
  final double height;
  final double? commonWH;
  final Color iconColor;

  const EPIconButton({
    super.key,
    this.onPressed,
    this.width = 20,
    this.height = 20,
    this.commonWH,
    this.icon = const Icon(
      Icons.arrow_forward_ios,
      // color: ColorConstant.grey114,
      size: 12,
    ),
    this.iconColor = ColorConstant.grey156,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: commonWH ?? width,
      height: commonWH ?? height,
      child: IconButton(
          onPressed: onPressed,
          icon: icon,
          padding: EdgeInsets.zero,
          color: iconColor),
    );
  }
}
