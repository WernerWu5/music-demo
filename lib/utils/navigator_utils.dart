import 'package:distribution_mall_flutter/utils/common_third.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class NavigatorUtils {
  //是否显示load的dialog
  static showLoadingDialog(bool isLoading) {
    if (isLoading) {
      EPLoading.showLoadig();
    } else {
      EPLoading.dis();
    }
  }
}
