// 工具函数
// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/constant/http_constant.dart';
import 'package:distribution_mall_flutter/entity/address/address_entity.dart';
import 'package:distribution_mall_flutter/generated/l10n.dart';
import 'package:distribution_mall_flutter/main.dart';
import 'package:distribution_mall_flutter/utils/common_third.dart';
import 'package:distribution_mall_flutter/utils/storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart';
// import 'package:store_checker/store_checker.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {
  static final Random random = Random();

  static Future<String> getCookiePath() async {
    final Directory tempDir = await getApplicationSupportDirectory();
    final String tempPath = "${tempDir.path}/.epal/";
    final Directory dir = Directory(tempPath);
    final bool b = await dir.exists();
    if (!b) {
      dir.createSync(recursive: true);
    }
    return tempPath;
  }

  static String yearSeq(String date, int length, String seq) {
    String year = dateFormat.parse(date).year.toString();
    year = year.substring(year.length - 2);
    String seqL = List.filled(3 - length, '0').join();
    return '$year$seqL$seq';
  }

  static String getRandomString(int length) {
    const List<String> randomCharset = [
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'g',
      'h',
      'i',
      'j',
      'k',
      'l',
      'm',
      'n',
      'o',
      'p',
      'q',
      'r',
      's',
      't',
      'u',
      'v',
      'w',
      'x',
      'y',
      'z'
    ];
    String str = '';
    for (int i = 0; i < length; i++) {
      int id = (Random().nextDouble() * 35).ceil();
      str += randomCharset[id];
    }
    return str;
  }

  static String mallSign(
    String? requestPath,
    String? validRequestTimestamp,
    String? validRequestRandom,
    String secretKey,
  ) {
    String md5ContentStr = [
      requestPath,
      validRequestTimestamp,
      validRequestRandom,
      secretKey,
    ].join(':');
    // 将字符串转换为 UTF-8 字节
    List<int> inputBytes = utf8.encode(md5ContentStr);
    // 使用 MD5 生成哈希
    Digest md5Digest = md5.convert(inputBytes);
    // 将哈希值转换为十六进制字符串
    String md5Hash = md5Digest.toString();
    return md5Hash;
  }

  static String getPlatform() {
    if (kIsWeb) {
      return 'web';
    } else if (Platform.isAndroid) {
      return 'android';
    } else if (Platform.isIOS) {
      return 'ios';
    } else if (Platform.isWindows) {
      return 'windows';
    } else if (Platform.isMacOS) {
      return 'macos';
    } else if (Platform.isLinux) {
      return 'linux';
    } else {
      return 'unknown';
    }
  }

  static Map<String, dynamic> getDeviceInfo() {
    int gap = ((globalKey.currentContext?.size?.height ?? 375) ~/ 3);
    return {
      'width': globalKey.currentContext?.size?.width ?? 0,
      'height': globalKey.currentContext?.size?.height ?? 0,
      'gap': gap.isNaN ? 70 : gap
    };
  }

  static String formatCurrency(
      [String locale = 'fil_PH', String symbol = '₱']) {
    int p = 0;

    return NumberFormat.currency(locale: locale, symbol: symbol).currencySymbol;
  }

  static Widget currencyWidget(dynamic price,
      {TextStyle? priceStyle,
      TextStyle? symbolStyle,
      TextStyle? commonStyle,
      TextStyle? subStyle,
      TextStyle? labelStyle,
      TextAlign? textAlign,
      String? label,
      TextOverflow overflow = TextOverflow.clip,
      bool showDis = false,
      int? maxLines,
      String sufText = '',
      MainAxisSize mainAxisSize = MainAxisSize.max,
      MainAxisAlignment mainAxis = MainAxisAlignment.start,
      CrossAxisAlignment crossAxis = CrossAxisAlignment.end,
      List<InlineSpan>? endSpan}) {
    List<InlineSpan> list = [];
    if (label != null) {
      list.add(TextSpan(text: label, style: labelStyle ?? commonStyle));
    }
    if (showDis && (int.tryParse('$price') ?? 0) > 0) {
      list.add(TextSpan(text: '- ', style: subStyle ?? commonStyle));
    }

    list.add(
        TextSpan(text: formatCurrency(), style: symbolStyle ?? commonStyle));

    list.add(TextSpan(
        text: '${price == null || price == '' ? '-' : price}$sufText',
        style: priceStyle ?? commonStyle));
    if (endSpan != null) {
      list.addAll(endSpan);
    }
    return RichText(
      maxLines: maxLines, // 设置显示的最大行数
      overflow: overflow,

      text: TextSpan(children: list),
    );
  }

  static Widget currencyWidgetV2(dynamic price,
      {TextStyle? priceStyle,
      TextStyle? symbolStyle,
      TextStyle? commonStyle,
      TextStyle? subStyle,
      TextStyle? labelStyle,
      TextAlign? textAlign,
      String? label,
      TextOverflow overflow = TextOverflow.clip,
      bool showDis = false,
      bool loading = false,
      int? maxLines,
      String sufText = '',
      MainAxisSize mainAxisSize = MainAxisSize.max,
      MainAxisAlignment mainAxis = MainAxisAlignment.start,
      CrossAxisAlignment crossAxis = CrossAxisAlignment.end}) {
    List<Widget> list = [];
    if (label != null) {
      list.add(Text(label, style: labelStyle ?? commonStyle));
    }
    if (showDis) {
      list.add(Text('- ', style: subStyle ?? commonStyle));
    }

    if (loading) {
    } else {
      list.add(Text(formatCurrency(), style: symbolStyle ?? commonStyle));
      list.add(Text('${price == null || price == '' ? '-' : price}$sufText',
          style: priceStyle ?? commonStyle));
    }

    return Row(children: list);
  }

  static String formatAddress(var item) {
    if (item == null) return '';
    return '${item.street} ${item.district} ${item.city} ${item.province}';
  }

  static Map<String, dynamic> formatConsignee(AddressItem item) {
    return {
      'phone': item.phone,
      'phoneNumber': item.phone,
      'name': item.recipientName,
      'country': item.country,
      'province': item.province,
      'city': item.city,
      'district': item.district,
      'street': item.street,
      'detailInfo': item.detailInfo,
      'zip': item.zip,
      'virtualPostcode': item.virtualPostcode,
    };
  }

  ///是否带加号
  static String addPrePhone(String phone, {bool plusSymbol = true}) {
    String result;
    if (phone.startsWith('+63')) {
      result = phone;
    } else if (phone.startsWith('63') && phone.length == 13) {
      return '+$phone';
    } else {
      result = '+63$phone';
    }
    return plusSymbol ? result : result.replaceFirst('+', '');
  }

  static copy(String text) {
    Clipboard.setData(ClipboardData(text: text));
    EPToast.showToast(S.current.copy_succeeded);
  }

  static getCopyData() {
    return Clipboard.getData(Clipboard.kTextPlain);
  }

  static getTime(int? timestampInMillis) {
    if (timestampInMillis == null) return '';
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestampInMillis);
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(dateTime);
  }

  static String formatDouble(double? d) {
    if (d == null) return '';
    return d.truncateToDouble() == d ? d.toInt().toString() : d.toString();
  }

  // 获取安装渠道
  static bool getEnvIsFat() {
    return const String.fromEnvironment('env', defaultValue: 'fat') == 'fat';
  }

  // 判断端，打开相关页面
  static go2Page(VoidCallback callback,
      {String? url, String suffix = ''}) async {
    String mallH5Url = url ??
        '${HttpConstant.getDomain.mallH5Url}activity/#/pages/activity/service/service$suffix';
    if (kIsWeb) {
      if (await canLaunchUrl(Uri.parse(mallH5Url))) {
        await launchUrl(Uri.parse(mallH5Url),
            mode: LaunchMode.externalApplication);
      } else {
        EPToast.showToast('Failed to open browser');
      }
      //
      return;
    }
    callback();
  }

  static Map<String, String> getUserParams() {
    if (EPstorage.isLogin()) {
      return {
        'userId': EPstorage.userInfo.get(UserInfoBoxKey.id) ?? '',
        'userName': EPstorage.userInfo.get(UserInfoBoxKey.username) ?? '',
        'userNick': EPstorage.userInfo.get(UserInfoBoxKey.nick) ?? '',
      };
    }
    return {};
  }

  // static Future<bool> isGooglePlayPackage() async {
  //   if (kIsWeb) return false;
  //   if (Platform.isAndroid) {
  //     Source info = await StoreChecker.getSource;
  //     return Source.IS_INSTALLED_FROM_PLAY_PACKAGE_INSTALLER == info ||
  //         Source.IS_INSTALLED_FROM_PLAY_STORE == info;
  //   }
  //   return false;
  // }

  // static Future<String> packageInstallSource() async {
  //   if (kIsWeb) return '';
  //   if (Platform.isAndroid) {
  //     Source info = await StoreChecker.getSource;
  //     return info.name;
  //   }
  //   return '';
  // }

  // 参数i， 0 为 进入后台 1 为 后台返回前台
  // 参数stay， 停留时长，默认3小时
  static fontBackground(int i, {int stay = 2}) {
    if (i == 0) {
      EPstorage.localCache.put(LocalCacheBoxKey.globalFontBackground,
          DateTime.now().millisecondsSinceEpoch);
    } else if (i == 1) {
      int? startTime = EPstorage.localCache.get(
        LocalCacheBoxKey.globalFontBackground,
      );
      if (startTime == null) return false;
      EPstorage.localCache.put(LocalCacheBoxKey.globalFontBackground, null);
      int hours = DateTime.now()
          .difference(DateTime.fromMillisecondsSinceEpoch(startTime))
          .inHours;
      return hours >= stay;
    }
  }
}
