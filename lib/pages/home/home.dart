import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/mixins/page_stay_time.dart';
import 'package:distribution_mall_flutter/pages/home/application/home_service.dart';
import 'package:distribution_mall_flutter/pages/home/domain/music_entity.dart';
import 'package:distribution_mall_flutter/pages/home/home_provider.dart';
import 'package:distribution_mall_flutter/pages/home/widgets/agreement.dart';
import 'package:distribution_mall_flutter/pages/home/widgets/home_appbar.dart';
import 'package:distribution_mall_flutter/utils/image_loader.dart';
import 'package:distribution_mall_flutter/utils/storage.dart';
import 'package:distribution_mall_flutter/widgets/shimmer.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:listview_infinite_pagination/listview_infinite_pagination.dart';

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
    final state = ref.watch(homeProvider);
    ref.watch(homeServiceProvider);
    return Scaffold(
        key: _homeKey,
        appBar: const HomeAppbar(),
        body: EPShimmer(
          enabled: state.loading,
          child: ListView.builder(
            itemCount: state.data.length, // 列表项总数
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: ImageLoader.imageNet(
                          state.data[index].artworkUrl60 ?? '',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover),
                      title: Text(
                          '${state.data[index].artistName} - ${state.data[index].trackName}'),
                      subtitle: Text('${state.data[index].collectionName}'),
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
