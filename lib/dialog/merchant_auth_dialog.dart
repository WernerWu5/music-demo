import 'package:distribution_mall_flutter/assets.dart';
import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/generated/l10n.dart';
import 'package:distribution_mall_flutter/utils/common_widget.dart';
import 'package:flutter/material.dart';

class MerchantAuthDialog extends StatelessWidget {
  final String title;
  final String? leftButton;
  final String rightButton;

  const MerchantAuthDialog(
      {super.key,
      required this.title,
      this.leftButton,
      required this.rightButton});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                margin: const EdgeInsets.only(left: 40, right: 40, top: 62),
                padding: const EdgeInsets.only(
                    left: 24, right: 24, top: 75, bottom: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 16, color: Color(0xFF49454F)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 24),
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          if (leftButton != null)
                            CommonBtnWidget.textBtn(
                                onPressed: () {
                                  appRouter.maybePop(false);
                                },
                                width: 68,
                                text: leftButton,
                                textStyle: const TextStyle(
                                    color: Color(0xFF868D96), fontSize: 14)),
                          const SizedBox(width: 16),
                          CommonBtnWidget.textBtn(
                              onPressed: () {
                                appRouter.maybePop(true);
                              },
                              width: 43,
                              text: rightButton,
                              textStyle: const TextStyle(
                                  color: Color(0xFF000000), fontSize: 14)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                Assets.assets_icons_order_auth_dialog_top_png,
                height: 152,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
