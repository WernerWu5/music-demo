import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/router/route_utils.dart';
import 'package:distribution_mall_flutter/utils/storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './router.gr.dart';

enum RouteInfoEnum {
  empty('', '', ''),
  login(LoginRoute.name, '登录页', '/login'),
  home(HomeRoute.name, '首页', '/home');
  // loginInviteCode(LoginInviteCodeRoute.name, '登录页输入邀请码页', '/loginInviteCode'),
  // loginVerification(
  //     LoginVerificationRoute.name, '登录验证码页', '/loginVerification/:phone', true),
  // productDetails(
  //     ProductDetailsRoute.name, '商品详情页', '/productDetails/:saleItemId', true),
  // agreement(AgreementRoute.name, '协议页', '/agreement'),
  // afterSale(AfterSaleRoute.name, '售后页', '/afterSale'),
  // orderList(OrderListRoute.name, '订单列表页', '/orderList'),
  // orderDetail(OrderDetailRoute.name, '订单详情页',
  //     '/orderDetail/:distributionOrderId/:state', true),
  // orderLogistics(OrderLogisticsRoute.name, '物流页',
  //     '/orderLogistics/:bizOrderNumber/:state', true),
  // payLoading(
  //     PayLoadingRoute.name,
  //     '支付状态页',
  //     '/payLoading/:distributionOrderId/:paymentType/:receiptPaymentId',
  //     true),
  // payList(PayListRoute.name, '支付列表页', '/payList/:distributionOrderId', true),
  // deleteAccountNotice(
  //     DeleteAccountNoticeRoute.name, '删除账号告示页', '/deleteAccountNotice'),
  // deleteAccountLoading(
  //     DeleteAccountLoadingRoute.name, '删除账号loading页', '/deleteAccountLoading'),
  // deleteAccountVerify(DeleteAccountVerifyRoute.name, '删除账号验证页',
  //     '/deleteAccountVerify/:isPhone/:accountType/:accountName', true),
  // deleteAccountDeletingLoading(
  //     DeleteAccountDeletingLoadingRoute.name,
  //     '删除账号删除loading页',
  //     '/deleteAccountDeletingLoading/:accountName/:accountType/:captchaToken',
  //     true),
  // deleteAccountDeleteSuccess(DeleteAccountDeleteSuccessRoute.name, '删除账号成功页',
  //     '/deleteAccountDeleteSuccess'),
  // merchantAuthentication(
  //     MerchantAuthenticationRoute.name, '商户审核页', '/merchantAuthentication'),
  // privacy(PrivacyRoute.name, '协议页', '/privacy/:title/:indexKey', true),
  // reviewImage(
  //     ReviewImageRoute.name, '预览图片页', '/reviewImage/:images/:index', true),
  // addressCreateEdit(AddressCreateEditRoute.name, '添加修改地址页',
  //     '/addressCreateEdit/:type/:selectItem', true),
  // service(ServiceRoute.name, '客服页', '/service');

  const RouteInfoEnum(this.routeName, this.routeZhName, this.path,
      [this.isDynamic = false]);

  final String routeName;
  final String routeZhName;
  final String path;
  final bool isDynamic;

  // 将map属性值嵌入动态path
  String getDynamicPath(Map<String, dynamic> map) {
    List<String> pathStr = path
        .substring(1)
        .split('/')
        .map((str) => str.replaceAll(':', ''))
        .toList();

    map.forEach((key, value) {
      int index = pathStr.indexOf(key);
      if (index == -1) return;
      pathStr[index] = value;
    });
    return '/${pathStr.join('/')}';
  }

  /// 获取 路由 map
  ///
  /// * key为path,不包含动态路由，如：/loginVerification/:phone 仅为 /loginVerification
  /// * value 为 ''  或 动态路由值，如 /:phone
  static Map<String, String> getPathMap() {
    Map<String, String> map = {};
    RouteInfoEnum.values.forEach((item) {
      // map[item.path] = item.isDynamic
      if (item.path == '') return;
      List<String> list = item.path.substring(1).split('/');
      int index = list.indexWhere((str) => str.contains(':'));
      if (index >= 0) {
        map["/${list.slice(0, index).join('/')}"] =
            "/${list.slice(index).join('/')}";
      } else {
        map["/${list.join('/')}"] = '';
      }
    });
    return map;
  }

  static RouteInfoEnum getInfo(String? routeName) =>
      RouteInfoEnum.values.firstWhere((item) => item.routeName == routeName,
          orElse: () => RouteInfoEnum.empty);

  static bool isPath(String path) {
    if (path == '/') return false;
    Map<String, String> pathMap = getPathMap();
    List<String> list = path.substring(1).split('/');
    for (String key in pathMap.keys) {
      bool isSameFirstPath = key.substring(1).split('/')[0].contains(list[0]);
      if (isSameFirstPath) {
        if (pathMap[key] == '') {
          if (key.contains(path)) return true;
        }
        if (path.startsWith(key)) {
          path = path.replaceAll(key, '');
          if (path.split('/').length == pathMap[key]?.split('/').length) {
            return true;
          }
        }
      }
    }
    return false;
  }
}

// 定义一个简单的缓存类
class _PageCache {
  final Map<String, Widget> _cache = {};

  // 根据路径获取缓存的 Widget
  Widget? get(String path) => _cache[path];

  // 缓存指定路径的 Widget
  void set(String path, Widget widget) {
    _cache[path] = widget;
  }
}

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: SplashRoute.page,
          initial: !kIsWeb,
        ),
        AutoRoute(
          path: RouteInfoEnum.home.path,
          page: HomeRoute.page,
        ),
        ...login,
      ];

  List<AutoRoute> get login => [
        ///登录页
        AutoRoute(
          path: RouteInfoEnum.login.path,
          page: LoginRoute.page,
        ),
      ];
}

class AuthGuard extends AutoRouteGuard {
  ///来个静态实例
  static final AuthGuard instance = AuthGuard();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    resolver.next(true);
  }
}

class GoRouterObserver extends AutoRouterObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    String routeName = RouteInfoEnum.getInfo(route.settings.name).routeName;
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    String routeName = RouteInfoEnum.getInfo(route.settings.name).routeName;

    if (routeName.isNotEmpty) {
      RouteUtils.onStorePageStayTime(route);
      RouteUtils.routeStack(0, route.settings.name!);
    }
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    String routeName = RouteInfoEnum.getInfo(route.settings.name).routeName;
    if (routeName.isNotEmpty) {
      RouteUtils.onStorePageStayTime(route);
      RouteUtils.routeStack(0, route.settings.name!);
    }
    debugPrint(
        '======>路由的didRemove：GoRouterObserver didRemove: ${route.settings.name}');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    String newRouteName =
        RouteInfoEnum.getInfo(newRoute!.settings.name).routeName;
    String oldRouteName =
        RouteInfoEnum.getInfo(oldRoute!.settings.name).routeName;
    debugPrint(
        '======>路由的didReplace：GoRouterObserver didReplace: ${newRoute.settings.name}');
  }
}
