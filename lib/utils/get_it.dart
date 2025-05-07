import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/provider/common/article.dart';
import 'package:distribution_mall_flutter/utils/analytics.dart';
import 'package:distribution_mall_flutter/utils/log.dart';
import 'package:distribution_mall_flutter/utils/storage.dart';
import 'package:distribution_mall_flutter/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

class GetIt {
  // 注册设备信息
  static initDeivceInfo() async {
    var deviceInfoPlugin = DeviceInfoPlugin();
    if (!kIsWeb) {
      getIt.registerSingleton(await PackageInfo.fromPlatform());
    }
    if (kIsWeb) {
      // 需要延时，因为会出现同步进来两次
      Future.delayed(const Duration(milliseconds: 500), () async {
        if (!isDeviceInfoRegistered()) {
          getIt.registerSingleton(await deviceInfoPlugin.webBrowserInfo);
        }
      });
    } else if (Platform.isAndroid && !isDeviceInfoRegistered()) {
      getIt.registerSingleton(await deviceInfoPlugin.androidInfo);
    } else if (Platform.isIOS && !isDeviceInfoRegistered()) {
      getIt.registerSingleton(await deviceInfoPlugin.iosInfo);
    }
  }

  // 注册Gobal Ref
  static initRef(WidgetRef ref) {
    if (getIt.isRegistered<WidgetRef>()) {
      getIt.unregister<WidgetRef>();
    }
    getIt.registerSingleton(ref);
  }

  // 判断是否注册过设备信息
  static bool isDeviceInfoRegistered() {
    if (kIsWeb) {
      return getIt.isRegistered<WebBrowserInfo>();
    } else if (Platform.isAndroid) {
      return getIt.isRegistered<AndroidDeviceInfo>();
    } else if (Platform.isIOS) {
      return getIt.isRegistered<IosDeviceInfo>();
    }
    return false;
  }

  // 获取设备信息
  static getDeviceInfo() {
    if (kIsWeb) {
      return getIt<WebBrowserInfo>();
    } else if (Platform.isAndroid) {
      return getIt<AndroidDeviceInfo>();
    } else if (Platform.isIOS) {
      return getIt<IosDeviceInfo>();
    }
  }

  // 全局 初始化请求
  static initCommonHttp() {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   if (EPstorage.isLogin()) {
    //     getIt<WidgetRef>().watch(loginStateProvider.notifier).login();
    //   } else {
    //     getIt<WidgetRef>()
    //         .watch(loginStateProvider.notifier)
    //         .outLogin(go2login: false);
    //   }
    // });
  }

  // 登录后，请求
  static setCommonHttp() {
    if (!getIt.isRegistered<WidgetRef>()) {
      LogUtil.d('未注册，无法执行全局Global WidgetRef!!');
      return;
    }
    // getIt<WidgetRef>().listen(loginStateProvider, (pre, next) {
    //   WidgetsBinding.instance.addPostFrameCallback((_) {
    //     // 已登录
    //     Future.delayed(const Duration(seconds: 1), () {
    //       if ((pre == true || (pre != next && next)) && EPstorage.isLogin()) {
    //         // 获取省地址

    //         // 登录后
    //         if (next) {
    //           FirebaseAnalyticsUtils.webParams = EPAnalytics.initWebParams();
    //           // getIt<WidgetRef>().watch(userAddressProvider.notifier).refresh();
    //           Future.delayed(const Duration(milliseconds: 100), () {
    //             // 获取用户信息
    //             getIt<WidgetRef>()
    //                 .watch(userInfoProvider.notifier)
    //                 .getUserInfo();
    //             // 登录后，设置 analytics公共参数
    //             Future.delayed(const Duration(milliseconds: 500), () {
    //               EPAnalytics.initDefaultParams();
    //             });
    //           });
    //         }
    //       }
    //     });
    //   });
    // });
  }
}
