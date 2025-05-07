import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/utils/common_widget.dart';
import 'package:flutter/material.dart';

/// 左右选择的dialog
class TwoResultHintDialog extends StatelessWidget {
  final String title;
  final String? leftText;
  final String? rightText;

  const TwoResultHintDialog(
      {super.key, required this.title, this.leftText, this.rightText});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, color: Color(0xFF49454F)),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: const EdgeInsets.only(top: 24),
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CommonBtnWidget.textBtn(
                      onPressed: () {
                        appRouter.maybePop(false);
                      },
                      width: 68,
                      text: leftText ?? 'Cancel',
                      textStyle: const TextStyle(
                          color: Color(0xFF868D96), fontSize: 14)),
                  SizedBox(width: rightText == null ? 8 : 16),
                  CommonBtnWidget.textBtn(
                      onPressed: () {
                        appRouter.maybePop(true);
                      },
                      fixWidth: rightText == null ? 35 : 43,
                      text: rightText ?? 'OK',
                      textStyle: const TextStyle(
                          color: Color(0xFF000000), fontSize: 14)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
