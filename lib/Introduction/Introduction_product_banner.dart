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

class IntroductionProductBanner extends StatelessWidget {
  const IntroductionProductBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0x99000000),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 162),
            child:
                // ImageLoader.imageNet(
                //   ImageConstant.productGuideBanner,
                //   height: 321,
                //   isReplace: false,
                // ),
                Image.asset(
              Assets.assets_icons_product_guide_banner_png,
              height: 321,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 55),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.white, width: 1),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 11),
            child: Text(
              S.current.next_page,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
