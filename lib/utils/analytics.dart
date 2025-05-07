import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/utils/get_it.dart';
import 'package:distribution_mall_flutter/router/router.dart';
import 'package:distribution_mall_flutter/utils/storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';

class EPAnalytics {
  static Future<Map<String, dynamic>> _getDeviceParams() async {
    final info = GetIt.getDeviceInfo();
    Map<String, dynamic> map = {};
    map['userId'] = EPstorage.userInfo.get(UserInfoBoxKey.id) ?? '';
    map['userName'] = EPstorage.userInfo.get(UserInfoBoxKey.username) ?? '';
    map['nickname'] = EPstorage.userInfo.get(UserInfoBoxKey.nick) ?? '';
    map['appVersion'] = getIt<PackageInfo>().version;

    map['port'] =
        Platform.isAndroid ? PlatformConstant.android : PlatformConstant.ios;
    if (!kIsWeb) {
      map['platform'] = Platform.localeName;
      map['buildNumber'] = getIt<PackageInfo>().buildNumber;
    }

    if (kIsWeb) {
      return {
        'browerName': info.browserName,
        'deviceName': '',
        'deviceId': '',
        ...map
      };
    } else if (Platform.isIOS || Platform.isAndroid) {
      var patchNumber;
      try {
        patchNumber = await ShorebirdCodePush().currentPatchNumber();
      } catch (e) {
        debugPrint('EPAnalytics-patchNumber=======================$e');
      }
      return {
        'deviceName': Platform.isAndroid ? info.model : info.model,
        'deviceId': Platform.isAndroid ? info.id : info.identifierForVendor,
        'brand': Platform.isAndroid ? info.brand : 'apple',
        'device': Platform.isAndroid ? info.device : 'ios',
        'display': Platform.isAndroid ? info.display : '',
        'version':
            Platform.isAndroid ? info.version.toString() : info.systemVersion,
        'systemName': Platform.isAndroid ? '' : info.systemName,
        'shorebird_patch_number': patchNumber,
        ...map
      };
    }
    return {};
  }

  static Map<String, Object?> initWebParams() {
    Map<String, Object?> map = {};
    if (!kIsWeb) return map;
    final info = GetIt.getDeviceInfo();
    map['userId'] = EPstorage.userInfo.get(UserInfoBoxKey.id) ?? '';
    map['userName'] = EPstorage.userInfo.get(UserInfoBoxKey.username) ?? '';
    map['nickname'] = EPstorage.userInfo.get(UserInfoBoxKey.nick) ?? '';
    map['browerName'] = info.browserName.toString();
    map['platform'] = info.platform.toString();
    map['product'] = info.product.toString();
    map['language'] = info.language.toString();
    map['userAgent'] = info.userAgent.toString();
    map['vendor'] = info.vendor.toString();
    map['deviceMemory'] = info.deviceMemory.toString();
    map['port'] = 'web';
    // map['appVersion'] = getIt<PackageInfo>().version;
    return map;
  }

  // 公共参数
  static initDefaultParams() async {
    if (!GetIt.isDeviceInfoRegistered()) {
      await GetIt.initDeivceInfo();
    }

    Map<String, dynamic> map = {};
    map['userId'] = EPstorage.userInfo.get(UserInfoBoxKey.id) ?? '';
    map['userName'] = EPstorage.userInfo.get(UserInfoBoxKey.username) ?? '';
  }

  static Map<String, dynamic> commonParams(BuildContext context) {
    // context.router.current;
    String prePageName = '';
    if (context.router.stack.length > 1) {
      prePageName =
          context.router.stack[context.router.stack.length - 2].name ?? '';
    }
    return {
      'pageName':
          RouteInfoEnum.getInfo(context.router.current.name).routeZhName,
      'prePageName': prePageName
    };
  }
}
