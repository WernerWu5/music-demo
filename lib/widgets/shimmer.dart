import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:shimmer/shimmer.dart';

class EPShimmer extends StatelessWidget {
  final Widget child;
  // final Color baseColor;
  // final Color highlightColor;
  final bool enabled;

  const EPShimmer({
    super.key,
    required this.child,
    this.enabled = false,

    // this.baseColor = Colors.black,
    // this.highlightColor = Colors.black
  });

  @override
  Widget build(BuildContext context) {
    // return Shimmer(
    //     enabled: enabled,
    //     gradient: const LinearGradient(
    //       colors: [Colors.blue, Colors.green], // 渐变的颜色列表
    //       begin: Alignment.topLeft, // 渐变的起点
    //       end: Alignment.bottomRight,
    //     ),
    //     // baseColor: baseColor,
    //     // highlightColor: highlightColor,
    //     child: child);

    // return Shimmer.fromColors(
    //     enabled: true,
    //     baseColor: ColorConstant.grey153,
    //     highlightColor: ColorConstant.grey195,
    //     child: child);
    return Skeletonizer(
      enabled: enabled,
      // containersColor: ColorConstant.grey228,
      child: child,
    );
  }
}
