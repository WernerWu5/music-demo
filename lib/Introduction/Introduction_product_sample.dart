import 'package:distribution_mall_flutter/assets.dart';
import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:distribution_mall_flutter/constant/image_constant.dart';
import 'package:distribution_mall_flutter/entity/goods/list/goods_list_entity.dart';
import 'package:distribution_mall_flutter/generated/l10n.dart';
import 'package:distribution_mall_flutter/utils/color_util.dart';
import 'package:distribution_mall_flutter/utils/debug.dart';
import 'package:distribution_mall_flutter/utils/image_loader.dart';
import 'package:distribution_mall_flutter/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

import 'Introduction_hone_one.dart';

/// 第二个弹框是比较难理解的
/// 第一,目前用的瀑布流gridview子组件setstate后无法修改高度.所有profit无法测量高度,不过好在获取到了组件上一次的布局,然后字符串文案产品要求是写死的,所以可以大概写出无法测量的组件布局宽高
/// 其中有2个,一个是msrp的左边边距一个是profit的位置无法具体根据key去写
class IntroductionProductSample extends StatelessWidget {
  final WidgetLocationInfo contentInfo;

  const IntroductionProductSample({
    super.key,
    required this.contentInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0x99000000),
      child: Stack(
        children: [
          buildTop(),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(
                top: contentInfo.top -
                    (20 * 10 + 15 + 27) +
                    (contentInfo.size.height) -
                    81 -
                    20 -
                    22 +
                    81 +
                    58,
              ),
              padding:
                  const EdgeInsets.symmetric(vertical: 11.5, horizontal: 54.5),
              decoration: BoxDecoration(
                color: const Color(0xFF0091F3),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.white, width: 0.5),
              ),
              child: Text(
                S.current.Got_it,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          Positioned(
            right: 8,
            child: Container(
              margin: EdgeInsets.only(
                top: contentInfo.top -
                    (20 * 10 + 15 + 27) +
                    (contentInfo.size.height) -
                    20 -
                    22 -
                    15,
              ),
              child:
                  // ImageLoader.imageNet(
                  //   ImageConstant.productGetSampleHand,
                  //   height: 74,
                  //   isReplace: false,
                  // ),
                  Image.asset(
                Assets.assets_icons_product_get_sample_hand_png,
                height: 74,
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildTop() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: contentInfo.top -
            (20 * 10 + 15 + 27) +
            (contentInfo.size.height) -
            81 -
            20 -
            22 -
            60,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ImageLoader.imageNet(
          //   ImageConstant.productGetSampleTitle,
          //   height: 60,
          //   isReplace: false,
          // ),
          Image.asset(
            Assets.assets_icons_product_get_sample_title_png,
            height: 60,
          ),
          Container(
            height: 81,
            margin: const EdgeInsets.only(left: 8, right: 8, top: 20),
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff2f66fc),
                        Color(0xff73b1fb),
                      ],
                      stops: [
                        0,
                        1
                      ])),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ImageLoader.imageNet(
                      //   ImageConstant.librengSample,
                      //   isReplace: false,
                      //   width: 144,
                      //   height: 16
                      // ),
                      Image.asset(
                        Assets.assets_icons_libreng_sample_png,
                        width: 144,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 4),
                        child: Text(
                          S.current.get_free_sample_sub_title,
                          style: const TextStyle(
                              fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: 70,
                    height: 33,
                    alignment: Alignment.center,
                    child: Text(
                      S.current.Get,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF007DF9)),
                    ),
                  )
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: contentInfo.left),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 20 * 10 + 15 + 27,
                      margin: const EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            margin: const EdgeInsets.only(top: 17),
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                          ),
                          ...ColorUtil.generateColorList(
                                  Colors.white, Colors.white, 9)
                              .map((e) => Container(
                                    width: 1,
                                    height: 10,
                                    margin: const EdgeInsets.only(top: 10),
                                    decoration: BoxDecoration(
                                      color: e,
                                    ),
                                  )),
                          Container(
                            width: 10,
                            height: 10,
                            margin: const EdgeInsets.only(top: 5),
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
