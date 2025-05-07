import 'package:distribution_mall_flutter/assets.dart';
import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:distribution_mall_flutter/constant/image_constant.dart';
import 'package:distribution_mall_flutter/entity/goods/list/goods_list_entity.dart';
import 'package:distribution_mall_flutter/generated/l10n.dart';
import 'package:distribution_mall_flutter/utils/color_util.dart';
import 'package:distribution_mall_flutter/utils/image_loader.dart';
import 'package:flutter/material.dart';

class WidgetLocationInfo {
  double top, left;
  Size size;

  WidgetLocationInfo(this.top, this.left, this.size);

  static WidgetLocationInfo? fromKey(GlobalKey? key) {
    RenderBox? renderBox =
        key?.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      Offset offset = renderBox.localToGlobal(Offset.zero);
      return WidgetLocationInfo(offset.dy, offset.dx,
          Size(renderBox.paintBounds.width, renderBox.paintBounds.height));
    } else {
      return null;
    }
  }
}

class IntroductionHoneOne extends StatelessWidget {
  final Widget content;
  final WidgetLocationInfo contentInfo;
  final WidgetLocationInfo titleInfo;
  final WidgetLocationInfo subTitleInfo;
  final WidgetLocationInfo? lockInfo;

  final Item data;

  const IntroductionHoneOne(
      {super.key,
      required this.content,
      required this.contentInfo,
      required this.titleInfo,
      required this.subTitleInfo,
      required this.lockInfo,
      required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0x99000000),
      child: Stack(
        children: [
          buildTop(),
          if (data.categoryInfo?.categoryName != null) buildCenter(),
          if (lockInfo != null) buildBottom(),
        ],
      ),
    );
  }

  Container buildTop() {
    bool show = (contentInfo.top - 10 * 20 - 15 - 50 - 78) < 0;
    if (show) {
      return Container();
    }
    return Container(
      margin: EdgeInsets.only(top: contentInfo.top - 10 * 20 - 15 - 50 - 78),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 78,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.white, width: 1),
            ),
            margin: const EdgeInsets.only(left: 42, right: 42),
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: ImageLoader.imageNet(ImageConstant.guideNotice,
                      width: 32),
                ),
                Expanded(
                  child: Text(
                    S.current.guide_brand_product_info,
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, top: 50 + 20 * 10 + 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Container(
                    margin: const EdgeInsets.all(3),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          colors: [
                            Color(0xd0e3f6ff),
                            Colors.white,
                            Colors.white
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: SizedBox(
                        width: contentInfo.size.width,
                        // height: contextSize.height,
                        child: content)),
              ),
              Container(
                // height: 50 + 20 * 10 + 15,
                padding: EdgeInsets.only(

                    ///左边的AlignedGridView的边距+item的pad=3+文字组件的宽/2
                    left: EdgeConstant.edge146 + 3 + titleInfo.size.width - 5,
                    top: 52),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // height: 20 * 10 + 15,
                      margin: const EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            margin: const EdgeInsets.only(top: 5),
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                          ),
                          ...ColorUtil.generateColorList(
                                  Colors.white, const Color(0xff5483bf), 9)
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
                                color: Color(0xff5483bf),
                                shape: BoxShape.circle),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            data.brandInfo?.brandName ?? '',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          S.current.guide_brand_name,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container buildBottom() {
    return Container(
      margin: EdgeInsets.only(top: lockInfo!.top + lockInfo!.size.height + 5),
      padding: EdgeInsets.only(
        left: lockInfo!.left,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // height: 20 * 10 + 15,
            margin: const EdgeInsets.only(right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.only(top: 5),
                        decoration: const BoxDecoration(
                            color: Color(0xff5483bf), shape: BoxShape.circle),
                      ),
                      ...ColorUtil.generateColorList(
                              const Color(0xff5483bf), Colors.white, 3)
                          .map((e) => Container(
                                width: 1,
                                height: 6,
                                margin: const EdgeInsets.only(top: 6, left: 5),
                                decoration: BoxDecoration(
                                  color: e,
                                ),
                              )),
                      Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.only(top: 5, right: 20),
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            S.current.explore_the_features,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 11),
                          child: Text(
                            S.current.next_page,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildCenter() {
    return Container(
      margin: EdgeInsets.only(top: contentInfo.top - 4 * 20 - 15),
      padding: EdgeInsets.only(
        left: subTitleInfo.left + subTitleInfo.size.width - 5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 6),
            child: Column(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.only(top: 5),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                ),
                ...ColorUtil.generateColorList(
                        Colors.white, const Color(0xff5483bf), 3)
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
                      color: Color(0xff5483bf), shape: BoxShape.circle),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F6F8),
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                child: Text(
                  data.categoryInfo!.categoryName!.length > 10
                      ? data.categoryInfo!.categoryName!.substring(0, 10)
                      : data.categoryInfo!.categoryName!,
                  style: const TextStyle(
                    color: Color(0xFF777777),
                    fontSize: 14,
                  ),
                  maxLines: 1,
                ),
              ),
              Text(
                S.current.product_category,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
