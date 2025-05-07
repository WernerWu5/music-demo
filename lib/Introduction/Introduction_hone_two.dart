import 'package:distribution_mall_flutter/assets.dart';
import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:distribution_mall_flutter/entity/goods/list/goods_list_entity.dart';
import 'package:distribution_mall_flutter/generated/l10n.dart';
import 'package:distribution_mall_flutter/utils/color_util.dart';
import 'package:distribution_mall_flutter/utils/debug.dart';
import 'package:distribution_mall_flutter/utils/utils.dart';
import 'package:flutter/material.dart';

import 'Introduction_hone_one.dart';

/// 第二个弹框是比较难理解的
/// 第一,目前用的瀑布流gridview子组件setstate后无法修改高度.所有profit无法测量高度,不过好在获取到了组件上一次的布局,然后字符串文案产品要求是写死的,所以可以大概写出无法测量的组件布局宽高
/// 其中有2个,一个是msrp的左边边距一个是profit的位置无法具体根据key去写
class IntroductionHoneTwo extends StatelessWidget {
  final Widget content;
  final WidgetLocationInfo contentInfo;
  final WidgetLocationInfo? msrpInfo;
  final WidgetLocationInfo? kitaInfo;
  final VoidCallback goLogin;

  final Item data;

  const IntroductionHoneTwo(
      {super.key,
      required this.content,
      required this.contentInfo,
      required this.msrpInfo,
      required this.kitaInfo,
      required this.data,
      required this.goLogin});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0x99000000),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, top: contentInfo.top),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      colors: [Color(0xd0e3f6ff), Colors.white, Colors.white],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                ),
                child: SizedBox(width: contentInfo.size.width, child: content)),
          ),
          if (msrpInfo != null) buildTop(),
          if (kitaInfo != null) buildCenter(context),
          buildBottom(),
        ],
      ),
    );
  }

  Container buildTop() {
    return Container(
      margin: EdgeInsets.only(
          top: msrpInfo!.top -
              (20 * 10 + 15 + 35) +
              (msrpInfo!.size.height) +
              (msrpInfo!.size.height) +
              2 -
              17,
          left: msrpInfo!.left - 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 20 * 10 + 15 + 55,
                    margin: const EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.only(top: 25),
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
                              color: Color(0xff5483bf), shape: BoxShape.circle),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${S.current.msrp}:',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        S.current.msrp_suggested,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container buildCenter(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: msrpInfo!.top -
              (20 * 5 + 15 + 35) +
              (kitaInfo!.size.height) / 2 +
              3 -
              17,
          left: kitaInfo!.size.width + kitaInfo!.left),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                ),
                ...ColorUtil.generateColorList(
                        Colors.white, const Color(0xff5483bf), 5)
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
                  decoration: const BoxDecoration(
                      color: Color(0xff5483bf), shape: BoxShape.circle),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 6),
            height: 28,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(255, 117, 76, 1),
                  Color.fromRGBO(255, 54, 85, 1)
                ],
                stops: [0.135, 0.98],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 11),
            child: Text(
              S.current.kita_margin,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildBottom() {
    var height = contentInfo.top + contentInfo.size.height;
    return Container(
      margin: EdgeInsets.only(top: height + 20),
      padding: const EdgeInsets.only(left: 51, right: 51),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40, right: 10),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      goLogin();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: 11),
                      child: Text(
                        S.current.register,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0091F3),
                      border: Border.all(
                        color: const Color(0xFF0091F3),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 11),
                    child: Text(
                      S.current.got_it,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
