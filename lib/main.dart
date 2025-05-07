import 'package:auto_route/auto_route.dart';
import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/generated/json/base/json_convert_content.dart';
import 'package:distribution_mall_flutter/generated/l10n.dart';
import 'package:distribution_mall_flutter/pages/home/home_provider.dart';
import 'package:distribution_mall_flutter/router/router.dart';
import 'package:distribution_mall_flutter/theme.dart';
import 'package:distribution_mall_flutter/utils/common_third.dart';
import 'package:distribution_mall_flutter/utils/get_it.dart';
import 'package:distribution_mall_flutter/utils/storage.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:oktoast/oktoast.dart';

import 'widgets/easy_refresh.dart';

void main() async {
  // web相关初始化
  // if (kIsWeb) {
  //   EPWeb.init();
  // }

  WidgetsFlutterBinding.ensureInitialized();

  // try {
  //   final fcmToken = await FirebaseMessaging.instance.getToken();
  //   FirebaseMessaging messaging = FirebaseMessaging.instance;

  //   NotificationSettings settings = await messaging.requestPermission(
  //     alert: true,
  //     announcement: false,
  //     badge: true,
  //     carPlay: false,
  //     criticalAlert: false,
  //     provisional: false,
  //     sound: true,
  //   );

  //   FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //     debugPrint('+++++++++++++++Got a message whilst in the foreground!');
  //     debugPrint('Message data: ${message.data}');

  //     if (message.notification != null) {
  //       debugPrint(
  //           'Message also contained a notification: ${message.notification}');
  //     }
  //   });

  //   debugPrint('User granted permission: ${settings.authorizationStatus}');
  //   print('================FCM Token: $fcmToken');
  // } catch (err) {
  //   print('err================err err: $err');
  // }

  // hive存储，初始化相关属性
  await EPstorage.init();
  // FirebaseUtils.init();
  // await dotenv.load(fileName: ".env");

  // 初始化设置loading样式
  EPLoading.init();

  // 设置上下拉滑动头部底部默认样式
  EasyRefresh.defaultHeaderBuilder = defaultRefreshHeader;
  EasyRefresh.defaultFooterBuilder = defaultRefreshFooter;
  SmartDialog.config
    ..custom = SmartConfigCustom(
      maskTriggerType: SmartMaskTriggerType.move,
    )
    //showAttach 全局配置
    ..attach = SmartConfigAttach(
      maskTriggerType: SmartMaskTriggerType.move,
    );
  // runApp(const ProviderScope(child: MaterialApp(home: EPApp())));
  // setPathUrlStrategy();
  runApp(const ProviderScope(child: EPApp()));
}

final GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();

class EPApp extends ConsumerStatefulWidget {
  const EPApp({super.key});

  @override
  ConsumerState createState() => _EPApp();
}

class _EPApp extends ConsumerState<EPApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   Future.delayed(Duration(seconds: 5), () {
    //     EPLoading.showLoadig();
    //   });
    // });
    // WidgetsBinding.instance.addObserver(this);
    // GetIt.initCommonHttp();
  }

  @override
  void dispose() {
    // WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // if (kIsWeb || Platform.isAndroid) return;
    // if (state == AppLifecycleState.paused) {
    //   Utils.fontBackground(0);
    // } else if (state == AppLifecycleState.resumed) {
    //   // 应用从后台返回前台
    //   if (Utils.fontBackground(1)) {
    //     appRouter.popUntilRoot();
    //     Future.delayed(const Duration(milliseconds: 200), () {
    //       appRouter.replace(SplashRoute());
    //     });
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    jsonConvert.reassembleConvertFuncMap();
    GetIt.initRef(ref);

    // GetIt.setCommonHttp();
    // EPstorage.setHiveStore(context);
    return ScreenUtilInit(
        designSize: const Size(412, 892),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, _) {
          return OKToast(
            radius: 4,
            position: ToastPosition.bottom,
            textPadding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 10.0,
            ),
            child: MaterialApp.router(
                key: globalKey,
                title: '顺顺尼',
                routerConfig: appRouter.config(
                    // routerDelegate: AutoRouterDelegate(appRouter),
                    // includePrefixMatches: true,
                    // deepLinkBuilder: (deepLink) {
                    //   List<String> pathList =
                    //       deepLink.path.substring(1).split('/');
                    //   String? saleItemId;
                    //   if (pathList.isNotEmpty &&
                    //       pathList.length == 1 &&
                    //       pathList[0].isNotEmpty &&
                    //       pathList[0].substring(0, 3) == 'PSI') {
                    //     saleItemId = pathList[0];
                    //   } else {
                    //     saleItemId = null;
                    //   }
                    //   if (RouteInfoEnum.isPath(deepLink.path)) {
                    //     return deepLink;
                    //   } else {
                    //     return DeepLink([SplashRoute(saleItemId: saleItemId)]);
                    //   }
                    // },
                    navigatorObservers: () => [
                          AutoRouteObserver(),
                          GoRouterObserver(),
                          FlutterSmartDialog.observer
                        ]),
                debugShowCheckedModeBanner: false,
                theme: appTheme(),
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                locale: const Locale('zh', 'CN'),
                builder: initEasyLoading()),
          );
        });
  }

  TransitionBuilder initEasyLoading() {
    return FlutterSmartDialog.init(builder:
        EasyLoading.init(builder: (BuildContext context, Widget? widget) {
      return MediaQuery(
        //Setting font does not change with system font size
        data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
        child: widget!,
      );
    }));
  }
}
