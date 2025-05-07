import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:distribution_mall_flutter/constant/image_constant.dart';
import 'package:distribution_mall_flutter/utils/image_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class EPSplitList extends StatelessWidget {
  const EPSplitList({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Row(
          children: [
            Column(
              children: [
                SizedBox(
                  width: 300,
                  height: MediaQuery.of(context).size.height - 80,
                  child: TabBar(
                    tabAlignment: TabAlignment.start,
                    labelStyle: const TextStyle(
                        fontSize: FontConstant.f16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    unselectedLabelStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                    // indicatorColor: Colors.black,
                    // unselectedLabelColor: Colors.redAccent,
                    // indicatorSize: TabBarIndicatorSize.label,
                    // indicator: BoxDecoration(
                    //   color: Colors.redAccent,
                    //   borderRadius: BorderRadius.circular(50),
                    //   // border: Border.all(
                    //   //   color: Colors.redAccent,
                    //   //   width: 1,
                    //   // ),
                    // ),
                    indicator: const BoxDecoration(),
                    splashBorderRadius: BorderRadius.circular(50),
                    labelPadding: const EdgeInsets.symmetric(horizontal: 10),
                    isScrollable: true,
                    // automaticIndicatorColorAdjustment: false,
                    // const BoxDecoration(
                    //     border: Border(
                    //         bottom:
                    //             BorderSide(color: ColorConstant.primaryColor, width: 2))),
                    tabs: const [
                      Tab(
                        text: '123123123',
                      ),
                      Tab(
                        text: '123123123',
                      ),
                      Tab(
                        text: '123123123',
                      ),
                      Tab(
                        text: '123123123',
                      ),
                      Tab(
                        text: '123123123',
                      ),
                      Tab(
                        text: '123123123',
                      ),
                    ],
                  ),
                )
              ],
            ),
            // TabBarView(
            //   children: [
            //     ImageLoader.imageNet(ImageConstant.gLogo, height: 40),
            //     ImageLoader.imageNet(ImageConstant.gLogo, height: 40),
            //     ImageLoader.imageNet(ImageConstant.gLogo, height: 40),
            //     ImageLoader.imageNet(ImageConstant.gLogo, height: 40),
            //     ImageLoader.imageNet(ImageConstant.gLogo, height: 40),
            //     ImageLoader.imageNet(ImageConstant.gLogo, height: 40),
            //   ],
            // )
          ],
        ));
  }
}
