import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/mixins/page_stay_time.dart';
import 'package:distribution_mall_flutter/pages/home/application/home_service.dart';
import 'package:distribution_mall_flutter/pages/home/home_provider.dart';
import 'package:distribution_mall_flutter/pages/home/widgets/agreement.dart';
import 'package:distribution_mall_flutter/pages/home/widgets/home_appbar.dart';
import 'package:distribution_mall_flutter/utils/storage.dart';
import 'package:distribution_mall_flutter/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

final GlobalKey<ScaffoldState> _homeKey = GlobalKey<ScaffoldState>();

bool isSlide = false;
int? slide;

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  // final String? saleItemId;
  const HomePage({super.key});

  @override
  ConsumerState createState() => _HomePage();
}

class _HomePage extends ConsumerState<HomePage>
    with PageStayTime<HomePage>, TickerProviderStateMixin {
  bool isDownHint = false;
  late StreamSubscription<List<ConnectivityResult>> subscription;
  bool isFirst = true;
  late final TabController homeTabController;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (!EPstorage.isGreen()) {
        SmartDialog.show(
            clickMaskDismiss: false,
            builder: (_) {
              return const Agreement();
            });
      }
    });

    //第一帧过后
    DebugConstant.runEnvFlag('zry', () {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
        // appRouter.push(LoginInviteCodeRoute());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(homeServiceProvider);
    return Scaffold(
        key: _homeKey,
        appBar: HomeAppbar(
          context: context,
        ),
        // endDrawer: Drawer(
        //   width: 300,
        //   child: Container(
        //     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        //     child: const HeaderBar(),
        //   ),
        // ),
        body: EPShimmer(
          enabled: true,
          child: SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
        ));
  }
}
