import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/router/router.dart';
import 'package:distribution_mall_flutter/router/router.gr.dart';
import 'package:distribution_mall_flutter/utils/storage.dart';
import 'package:flutter/material.dart';

class RouteUtils {
  // 记录页面停留时长
  static Map<String, dynamic> storePageStayTime = {};

  static onStorePageStayTime(Route<dynamic> route,
      {Route<dynamic>? curRoute,
      Route<dynamic>? preRoute,
      bool isHome = false}) {
    List<String> routeNameList = [
      // RouteInfoEnum.productDetails.routeName,
      // RouteInfoEnum.addressCreateEdit.routeName,
      // RouteInfoEnum.merchantAuthentication.routeName
    ];
    if (isHome || routeNameList.contains(route.settings.name)) {
      return;
    }

    // if (isHome &&
    //     preRoute != null &&
    //     storePageStayTime[RouteInfoEnum.home.routeName] != null) {
    //   FirebaseAnalyticsUtils.logEvent(
    //       name:
    //           '${RouteInfoEnum.getInfo(preRoute.settings.name).routeZhName}访问',
    //       parameters: {
    //         'pageName':
    //             RouteInfoEnum.getInfo(preRoute.settings.name).routeZhName,
    //         'stayTime': DateTime.now()
    //             .difference(storePageStayTime[preRoute.settings.name])
    //             .inSeconds,
    //         'pageQuery': preRoute.settings.arguments.toString(),
    //       });
    //   storePageStayTime[preRoute.settings.name!] = null;
    // }
  }

  /// dialog统计时长
  static onStoreDialogStayTime(
      {required String name,
      required DateTime startTime,
      required DateTime endTime}) {}

  static List<String> get routeStackList {
    List<String> list = [];
    return EPstorage.route.get(RouteBoxKey.routeList, defaultValue: list);
  }

  static routeStack(int i, String str) {
    List<String> defaultValue = [];
    List<String> list =
        EPstorage.route.get(RouteBoxKey.routeList, defaultValue: defaultValue);
    if (i == 0) {
      list.remove(str);
    } else {
      list.add(str);
    }
  }

  static back<T>([T? arg]) async {
    // List<String> list =
    //     EPstorage.route.get(RouteBoxKey.routeList, defaultValue: []);
    bool bol = await appRouter.maybePop<T>(arg);
    // String str = list.removeLast();

    // RouteInfoEnum routeInfoEnum = RouteInfoEnum.getInfo(str);
    // && routeInfoEnum.path != ''
    if (!bol) {
      debugPrint(
          'RouteInfoEnum.home.routeName ${RouteInfoEnum.home.routeName}');
      appRouter.popAndPush(HomeRoute());
    }
  }
}
