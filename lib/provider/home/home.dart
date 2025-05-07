import 'package:distribution_mall_flutter/entity/home.dart';
import 'package:distribution_mall_flutter/http/modules/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeState {
  List<BannerInfo> bannerList;
  String? account;
  String? pad;
  String? code;
  bool bannerLoading;
  bool showDrawer = false;

  late PageController controller = PageController();

  HomeState(
      {this.bannerList = const [],
      this.account,
      this.pad,
      this.code,
      this.showDrawer = false,
      this.bannerLoading = true});

  HomeState.initial()
      : bannerList = [],
        account = '',
        pad = '',
        code = '',
        showDrawer = false,
        bannerLoading = true;

  HomeState copyWith({
    List<BannerInfo>? bannerList,
    String? account,
    String? pad,
    String? code,
    bool? showDrawer,
    bool? bannerLoading,
  }) =>
      HomeState(
        bannerList: bannerList ?? this.bannerList,
        account: account ?? this.account,
        pad: pad ?? this.pad,
        code: code ?? this.code,
        showDrawer: showDrawer ?? this.showDrawer,
        bannerLoading: bannerLoading ?? this.bannerLoading,
      );
}

class HomeViewModel extends StateNotifier<HomeState> {
  HomeViewModel() : super(HomeState.initial());

  void getBanner() async {
    HomeApi.banner({'bannerLocation': '首页顶部'}).then((value) {
      if (value.status!.success != true) {
        return;
      }
      List<BannerInfo> data = bannerInfoFromJson(value.body);
      data.sort((a, b) {
        return a.sequence!.compareTo(b.sequence!);
      });
      state = state.copyWith(bannerList: data);
    }).whenComplete(() {
      state = state.copyWith(bannerLoading: false);
    });
  }

  void triggerDrawer(GlobalKey<ScaffoldState> key) {
    if (key.currentState?.isDrawerOpen == true) {
      // 如果侧边栏已经打开
      key.currentState?.closeEndDrawer(); // 关闭侧边栏
    } else {
      // 如果侧边栏已经关闭
      key.currentState?.openEndDrawer(); // 打开侧边栏
    }
  }
}
