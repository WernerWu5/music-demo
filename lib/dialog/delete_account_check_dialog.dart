import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/utils/common_widget.dart';
import 'package:flutter/material.dart';

class DeleteAccountCheckDialog extends StatelessWidget {
  final String path;
  final String content;
  final String confirmText;

  const DeleteAccountCheckDialog({
    super.key,
    required this.path,
    required this.content,
    required this.confirmText,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        margin: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              content,
              style: const TextStyle(fontSize: 16),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: const EdgeInsets.only(top: 24),
                child: CommonBtnWidget.textBtn(
                    onPressed: () {
                      // appRouter.popUntilRoot();
                      ///todo 去绑定手机号页面或者是首页
                      if(path == 'home'){
                        appRouter.popUntilRoot();
                      }else if(path == 'bindPhone'){
                      }
                    },
                    width: 124,
                    height: 40,
                    text: confirmText,
                    textStyle: const TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
