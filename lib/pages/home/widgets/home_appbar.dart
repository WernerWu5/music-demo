import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:distribution_mall_flutter/constant/image_constant.dart';
import 'package:distribution_mall_flutter/constant/status_constant.dart';
import 'package:distribution_mall_flutter/pages/home/application/home_service.dart';
import 'package:distribution_mall_flutter/pages/home/home_provider.dart';
import 'package:distribution_mall_flutter/utils/image_loader.dart';
import 'package:distribution_mall_flutter/widgets/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:oktoast/oktoast.dart';

class HomeAppbar extends ConsumerWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeSelect = ref.watch(homeProvider).activeSelect;

    Widget renderBtn(String type) {
      return Expanded(
          child: InkWell(
        onTap: () {
          ref.read(homeServiceProvider).sortData(
              sort: activeSelect.isEmpty ? 1 : (activeSelect[1] == 0 ? 1 : 0),
              type: type);
        },
        child: Container(
          height: 20,
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorConstant.black89,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(24),
            color: (activeSelect.isNotEmpty && activeSelect[0] == type)
                ? ColorConstant.grey246
                : Colors.transparent,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                type == MusicType.song ? '歌曲名' : '专辑名',
                style: const TextStyle(
                  color: ColorConstant.black45,
                  fontSize: FontConstant.f10,
                ),
              ),
              if (activeSelect.isNotEmpty && activeSelect[0] == type)
                Icon(
                    activeSelect[1] == 1
                        ? Icons.arrow_upward
                        : Icons.arrow_downward,
                    size: 10)
            ],
          ),
        ),
      ));
    }

    return AppBar(
      leadingWidth: 0,
      toolbarHeight: 80,
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
                onChanged: (str) {
                  // 防抖
                  EasyDebounce.debounce(
                      'input-debounce',
                      const Duration(milliseconds: 300),
                      () => ref.read(homeServiceProvider).search(str));
                },
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
            Padding(
              padding: const EdgeInsets.only(top: EdgeConstant.edge10),
              child: Row(
                children: [
                  renderBtn(MusicType.song),
                  const SizedBox(
                    width: 10,
                  ),
                  renderBtn(MusicType.collection),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 80);
}
