import 'dart:io';

import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/entity/pay/list/pay_list_entity.dart';
import 'package:distribution_mall_flutter/provider/common/pay.dart';
import 'package:distribution_mall_flutter/utils/log.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';

class EPstorage {
  static late final Box<dynamic> userInfo;
  static late final Box<dynamic> historyword;
  static late final Box<dynamic> localCache;
  static late final Box<dynamic> setting;
  static late final Box<dynamic> guide;
  static late final Box<dynamic> secret;
  static late final Box<dynamic> deviceInfo;
  static late final Box<dynamic> orderPayInfo;
  static late final Box<dynamic> route;

  static Future<void> init() async {
    if (kIsWeb) {
      await Hive.initFlutter('./');
    } else {
      final Directory dir = await getApplicationSupportDirectory();
      final String path = dir.path;
      await Hive.initFlutter('$path/hive');
    }

    regAdapter();

    // 登录用户信息
    userInfo = await Hive.openBox(
      'userInfo',
      compactionStrategy: (int entries, int deletedEntries) {
        return deletedEntries > 2;
      },
    );

    // token相关
    secret = await Hive.openBox(
      'signSecret',
      compactionStrategy: (int entries, int deletedEntries) {
        return deletedEntries > 4;
      },
    );

    // 本地缓存
    localCache = await Hive.openBox(
      'localCache',
      compactionStrategy: (int entries, int deletedEntries) {
        return deletedEntries > 4;
      },
    );
    localCache.put(LocalCacheBoxKey.currency, 'PHP');

    // 设置
    setting = await Hive.openBox('setting');

    // 引导
    guide = await Hive.openBox('guide');

    // 路由参数相关
    route = await Hive.openBox('route');

    // 搜索历史
    historyword = await Hive.openBox(
      'historyWord',
    );

    // 设备信息
    deviceInfo = await Hive.openBox(
      'deviceInfo',
    );

    orderPayInfo = await Hive.openBox('orderPayInfo');

    // 设置 shorebird 补丁号 及 抛错的相关信息
    try {
      final patchNumber = await shorebirdCodePush.currentPatchNumber();
      deviceInfo.put(DeviceInfoBoxKey.patchNumber, patchNumber ?? 0);
      if (!kIsWeb) {
        FirebaseCrashlytics.instance.setCustomKey(
          'shorebird_patch_number',
          '$patchNumber',
        );
      }
    } catch (_) {}
  }

  static void regAdapter() {
    Hive.registerAdapter(FormatTypeAdapter());
    Hive.registerAdapter(PaymentMethodAdapter());
    Hive.registerAdapter(PayMethodInfoAdapter());
  }

  static bool isLogin() {
    return true;
  }

  static bool isGreen() {
    return userInfo.get(UserInfoBoxKey.isGreen, defaultValue: false);
  }

  static outLogin() {
    secret.clear();
    userInfo.clear();
  }

  static Future<void> close() async {
    deviceInfo.compact();
    deviceInfo.close();
    userInfo.compact();
    userInfo.close();
    historyword.compact();
    historyword.close();
    localCache.compact();
    localCache.close();
    setting.compact();
    setting.close();
    guide.compact();
    guide.close();
    route.close();
    route.close();
  }

  static setHiveStore(BuildContext context) {
    deviceInfo.put(DeviceInfoBoxKey.height, MediaQuery.of(context).size.height);
  }
}

class SecretBoxKey {
  static const String signSecret = 'signSecret', token = 'token';
}

class UserInfoBoxKey {
  static const String userInfoBase = 'userInfoBase';
  static const String id = 'id';
  static const String nick = 'nick';
  static const String avatarUrl = 'avatarUrl';
  static const String username = 'username';
  static const String isFirst = 'isFirst';
  static const String code = 'code';
  static const String isGreen = 'isGreen';
}

class LocalCacheBoxKey {
  static const String currency = 'currency';
  static const String globalFontBackground = 'globalFontBackground';
}

class DeviceInfoBoxKey {
  static const String height = 'height';
  // 取消的补丁版本
  static const String cancelPatchNumber = 'cancelPatchNumber';
  // 取消的版本号
  static const String cancelVersionNumber = 'cancelVersionNumber';
  // 当前补丁号
  static const String patchNumber = 'patchNumber';
}

class OrderPayInfoBoxKey {
  static const String payListInfo = 'payListInfo';
}

///引导页
class GuideBoxKey {
  static const String homeProductItemGuide = 'homeGoodGuide';
  static const String productGuide = 'productGuide';
  static const String productGuideGetBanner = 'productGuideGetBanner';
  static const String productGuideGetSample = 'productGuideGetSample';
}

class RouteBoxKey {
  static const String isH5PDetail = 'isH5PDetail';
  static const String routeList = 'routeList';
}
