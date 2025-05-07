import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:flutter/widgets.dart';

class EPHorizontalDivider extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final EdgeInsets margin;
  final bool isExpand;
  const EPHorizontalDivider(
      {super.key,
      this.width = 20,
      this.height = 1,
      this.isExpand = false,
      this.color = const Color.fromRGBO(153, 153, 153, 0.3),
      this.margin =
          const EdgeInsets.symmetric(horizontal: EdgeConstant.edge8)});

  @override
  Widget build(BuildContext context) {
    return isExpand
        ? Expanded(
            child: Container(
            height: height,
            color: color,
            margin: margin, // 设置水平线的垂直间距
          ))
        : Container(
            width: width,
            height: height,
            color: color,
            margin: margin, // 设置水平线的垂直间距
          );
  }
}
