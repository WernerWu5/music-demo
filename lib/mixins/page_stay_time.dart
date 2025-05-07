import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

mixin PageStayTime<T extends StatefulWidget> on State<T>
    implements AutoRouteAware {
  AutoRouteObserver? _observer;
  DateTime startTime = DateTime.now();
  Map<String, Object?> pageStayMap = {};
  String pageStayName = '';

  initPageStayTime() {
    // FirebaseAnalyticsUtils.logEvent(name: '$pageStayName访问', parameters: {
    //   'pageName': pageStayName,
    //   'stayTime': DateTime.now().difference(startTime).inSeconds,
    //   ...pageStayMap
    // });
    // startTime = DateTime.now();
  }

  pageStayCallBack() {}

  popAndpushCallBack() {}
  popCallBack() {}
  popNextCallBack() {}

  pushCallBack() {}
  pushNextCallBack() {}

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // RouterScope exposes the list of provided observers
    // including inherited observers
    _observer =
        RouterScope.of(context).firstObserverOfType<AutoRouteObserver>();
    if (_observer != null) {
      // we subscribe to the observer by passing our
      // AutoRouteAware state and the scoped routeData
      _observer!.subscribe(this, context.routeData);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _observer?.unsubscribe(this);
  }

  @override
  void didChangeTabRoute(TabPageRoute previousRoute) {}

  @override
  void didInitTabRoute(TabPageRoute? previousRoute) {}

  @override
  void didPop() {
    debugPrint('PageStayTime didPop++++++++++++++++++++++');
    popAndpushCallBack();
    popCallBack();
    initPageStayTime();
  }

  @override
  void didPush() {
    debugPrint('PageStayTime didPush++++++++++++++++++++++');
    pushCallBack();
    popAndpushCallBack();
  }

  @override
  void didPopNext() {
    debugPrint('PageStayTime didPopNext++++++++++++++++++++++');
    // initPageStayTime();
    startTime = DateTime.now();
    pageStayCallBack();
    popNextCallBack();
  }

  @override
  void didPushNext() {
    debugPrint('PageStayTime didPushNext++++++++++++++++++++++');
    initPageStayTime();
    pageStayCallBack();
    pushNextCallBack();
  }
}
