import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:distribution_mall_flutter/constant/image_constant.dart';
import 'package:distribution_mall_flutter/pages/home/home_provider.dart';
import 'package:distribution_mall_flutter/utils/image_loader.dart';
import 'package:distribution_mall_flutter/widgets/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeAppbar extends ConsumerWidget implements PreferredSizeWidget {
  final BuildContext context;

  const HomeAppbar({super.key, required this.context});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      // leadingWidth: 116,
      // toolbarHeight: 58,
      // scrolledUnderElevation: 0,
      // backgroundColor:
      leading: const SizedBox.shrink(),
      title: Padding(
        padding: const EdgeInsets.only(top: EdgeConstant.edge5),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: TextField(
                onChanged: (str) {},
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 10),
                  hintText: '歌曲名/专辑名',
                  hintStyle:
                      const TextStyle(color: Colors.black87, fontSize: 14),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  child: InkWell(
                    child: Row(
                      children: [
                        Text(
                          '歌手名',
                          style: TextStyle(
                            color: ColorConstant.black45,
                            fontSize: FontConstant.f10,
                          ),
                        ),
                        Icon(Icons.arrow_upward, size: 15)
                      ],
                    ),
                  ),
                ),
                Container(),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 70);
}
