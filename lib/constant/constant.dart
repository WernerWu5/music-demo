import 'dart:ui';

import 'package:distribution_mall_flutter/constant/http_constant.dart';
import 'package:distribution_mall_flutter/router/router.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PlatformConstant {
  static const String android = 'android';
  static const String ios = 'ios';
  static const String windows = 'windows';
  static const String macos = 'macos';
  static const String linux = 'linux';
  static const String fuchsia = 'fuchsia';
  static const String web = 'web';
}

class ThirdParty {
  static const String google = 'google';
  static const String facebook = 'facebook';
  static const String apple = 'apple';
  static const String phone = 'phone';
}

class RegularConstant {
  static String phpPhoe = r'^(?:\+63|0)?9\d{9,10}$';
}

class DeAndThrConstant {
  // 防抖
  static String calPriceDe = 'calPriceDe';
}

class ReceiverType {
  static String phone = 'PHONE';
  static String phoneNumber = 'PHONE_NUMBER';
}

class ArticleIndexKey {
  static String termsService = 'terms-of-service';
  static String privacyPolicy = 'privacy-policy';
}

class AddressType {
  static String province = 'PROVINCE';
  static String city = 'CITY';
  static String area = 'AREA';
  static String street = 'STREET';
}

class NationCode {
  static String ph = 'PH';
}

class CurrencySymbol {
  static String ph = '₱';
}

class AscD {
  static String asc = 'ASC';
  static String desc = 'DESC';
}

// 支付的methodCode 小类
class PayType {
  static String cod = 'ONLINE_SELF_COD';
  static String free = 'FREE_SELF_PAYMENT';
}

// 支付的大类
class PaymentType {
  static String freePayment = 'FREE_PAYMENT';
  static String cod = 'COD';
}

class AppChannelConstant {
  static String apk = 'apk';
  static String google = 'google';
}

class DebugConstant {
  // 自己测试时候写的代码
  static const String debugFlag =
      String.fromEnvironment('debugFlag', defaultValue: '');
  // 测试环境才生效
  static const String fat = String.fromEnvironment('env', defaultValue: '');

  static void runEnvFlag(String flag, VoidCallback voidCallback) {
    if (flag == debugFlag) {
      voidCallback();
    }
  }

  static void runFatEnv(VoidCallback voidCallback) {
    if (fat == 'fat') {
      voidCallback();
    }
  }

  static bool isOpenRequestLog() {
    return debugFlag == 'zry';
  }
}

class HiveTypeIdConstant {
  static const int payInfoFormatType = 0;
  static const int payInfoMethod = 1;
  static const int paymentMethodClientBank = 2;
  static const int payInfoEntirety = 3;
}

final getIt = GetIt.instance;
final appRouter = AppRouter();
final shorebirdCodePush = ShorebirdCodePush();

// ..loadRequest(Uri.parse(
//     'https://m.elephantpal.com/activity/#/pages/activity/service/service'));

const String dateFormatStr = 'MM/dd/yy';
DateFormat dateFormat = DateFormat(dateFormatStr);
