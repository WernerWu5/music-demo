import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:distribution_mall_flutter/ext/toast_ext.dart';
import 'package:distribution_mall_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class EPModalBottomSheet {
  static Future showCMBS(
      {required BuildContext context,
      required Widget Function(BuildContext) builder}) {
    return showCupertinoModalBottomSheet(
        context: context,
        builder: builder,
        enableDrag: false,
        isDismissible: false,
        barrierColor: ColorConstant.blackOp4);
  }
}

class EPToast {
  static showToast(String msg) {
    msg.toast();
  }
}

class EPLoading {
  static init() {
    EasyLoading.instance
      // ..displayDuration = const Duration(milliseconds: 2000)
      // ..loadingStyle = EasyLoadingStyle.dark
      ..indicatorSize = 30
      ..contentPadding = const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      )
      // ..radius = 10.0
      // ..progressColor = Colors.yellow
      // ..backgroundColor = Colors.black.withOpacity(0.2)
      // ..indicatorColor = Colors.yellow
      // ..textColor = Colors.yellow
      ..fontSize = 12
      ..maskColor = Colors.black.withOpacity(0)
      // ..userInteractions = true
      ..dismissOnTap = false;
  }

  static showLoadig([String? text]) {
    EasyLoading.show(
        status: text ?? '${S.current.loading}...',
        dismissOnTap: false,
        maskType: EasyLoadingMaskType.custom);
  }

  static dis() {
    EasyLoading.dismiss();
  }
}
