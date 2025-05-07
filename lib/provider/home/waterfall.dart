import 'dart:async';

import 'package:distribution_mall_flutter/constant/status_constant.dart';
import 'package:distribution_mall_flutter/entity/goods/list/goods_list_entity.dart';
import 'package:distribution_mall_flutter/utils/utils.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WaterfallSwitch {
  static String forward = 'forward';
  static String back = 'back';
}

Item _item = Item()
  ..brandInfo = (BrandInfo()..brandName = 'Temporary brand replacement area')
  ..categoryInfo =
      (CategoryInfo()..categoryName = 'Temporary category replacement area')
  ..priceInfo = (PriceInfo()
    ..minSalePrice = 100
    ..maxSuggestedRetailPrice = 100);

final _tempList = [_item, _item, _item, _item, _item, _item];

class WaterfallState {
  bool firstLoading = true;
  double scrollPx;
  String waterfallSwitch = WaterfallSwitch.forward;
  int filterIndex = 0;
  int sort = 0;
  ScrollController? scrollController;
  ScrollController? childScrollController;
  PageController? pageController;
  EasyRefreshController? easyRefreshController;

  WaterfallState(
      {
      this.scrollPx = 0,
      this.filterIndex = 0,
      this.sort = 1,
      this.firstLoading = true,
      this.waterfallSwitch = 'forward',
      this.scrollController,
      this.childScrollController,
      this.pageController,
      this.easyRefreshController});

  WaterfallState.initial()
      :
        scrollPx = 0,
        filterIndex = 0,
        sort = 1,
        waterfallSwitch = WaterfallSwitch.forward,
        firstLoading = true,
        scrollController = ScrollController(initialScrollOffset: 0),
        pageController = PageController(),
        childScrollController = ScrollController(initialScrollOffset: 0);

  WaterfallState copyWith(
          {int? page,
          int? size,
          LoadStatus? load,
          List<dynamic>? list,
          ScrollController? scrollController,
          ScrollController? childScrollController,
          PageController? pageController,
          EasyRefreshController? easyRefreshController,
          bool? loading,
          double? scrollPx,
          int? filterIndex,
          int? sort,
          bool? firstLoading,
          String? waterfallSwitch,
          Map<String, dynamic>? params}) =>
      WaterfallState(
          scrollController: scrollController ?? this.scrollController,
          childScrollController:
              childScrollController ?? this.childScrollController,
          pageController: pageController ?? this.pageController,
          easyRefreshController:
              easyRefreshController ?? this.easyRefreshController,
          firstLoading: firstLoading ?? this.firstLoading,
          filterIndex: filterIndex ?? this.filterIndex,
          sort: sort ?? this.sort,
          waterfallSwitch: waterfallSwitch ?? this.waterfallSwitch,
          scrollPx: scrollPx ?? this.scrollPx);
}

final waterfallProvider =
    StateNotifierProvider.autoDispose<WaterfallViewModel, WaterfallState>(
        (ref) {
  return WaterfallViewModel();
});

class WaterfallViewModel extends StateNotifier<WaterfallState> {
  WaterfallViewModel() : super(WaterfallState.initial());


  void onTop() {
    state.scrollController?.animateTo(0,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  void changeWaterfallSwitch(String str) {
    state = state.copyWith(waterfallSwitch: str);
  }

  void changeSort() {
    state = state.copyWith(sort: state.sort == 1 ? 0 : 1);
  }

  movePages(int i) {
    // if (i == 0) {
    //   state.pageController?.previousPage(
    //       duration: const Duration(milliseconds: 300), curve: Curves.ease);
    //   return;
    // }
    // state.pageController?.nextPage(
    //     duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void setFirstLoadingIsFalse() {
    if (state.firstLoading) {
      state = state.copyWith(firstLoading: false);
    }
  }
}
