import 'dart:async';
import 'dart:convert';

import 'package:distribution_mall_flutter/entity/goods/list/goods_list_entity.dart';
import 'package:distribution_mall_flutter/utils/utils.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:device_info_plus/device_info_plus.dart';

class SingleListState {
  int page;
  int? size;
  int? load;
  List<dynamic>? list;
  Future<dynamic> Function(Map<String, dynamic> arg)? onRefresh;
  Map<String, dynamic>? params;
  bool loading = false;
  bool showFloatBtn = false;
  bool opacityBtn = false;
  double scrollPx;
  final ScrollController scrollController;

  SingleListState(
      {this.page = 1,
      this.size,
      this.load,
      this.list,
      this.onRefresh,
      this.params,
      this.loading = false,
      this.showFloatBtn = false,
      this.opacityBtn = false,
      this.scrollPx = 0,
      required this.scrollController});

  SingleListState.initial()
      : page = 1,
        size = 20,
        load = 0,
        list = [],
        params = {},
        loading = false,
        showFloatBtn = false,
        opacityBtn = false,
        scrollPx = 0,
        scrollController = ScrollController(initialScrollOffset: 0);

  SingleListState copyWith(
          {int? page,
          int? size,
          int? load,
          List<dynamic>? list,
          Future<dynamic> Function(Map<String, dynamic> arg)? onRefresh,
          ScrollController? scrollController,
          bool? loading,
          bool? showFloatBtn,
          bool? opacityBtn,
          double? scrollPx,
          Map<String, dynamic>? params}) =>
      SingleListState(
          page: page ?? this.page,
          size: size ?? this.size,
          load: load ?? this.load,
          list: list ?? this.list,
          onRefresh: onRefresh ?? this.onRefresh,
          params: params ?? this.params,
          loading: loading ?? this.loading,
          showFloatBtn: showFloatBtn ?? this.showFloatBtn,
          opacityBtn: opacityBtn ?? this.opacityBtn,
          scrollController: scrollController ?? this.scrollController,
          scrollPx: scrollPx ?? this.scrollPx);
}

final singleListProvider =
    StateNotifierProvider.autoDispose<SingleListViewModel, SingleListState>(
        (ref) {
  return SingleListViewModel();
});

class SingleListViewModel extends StateNotifier<SingleListState> {
  SingleListViewModel() : super(SingleListState.initial());

  void initListener() {
    int gap = Utils.getDeviceInfo()['gap'];
    double height = Utils.getDeviceInfo()['height'];
    state.scrollController.addListener(() async {
      EasyThrottle.throttle('scroll', const Duration(milliseconds: 50), () {
        var px = state.scrollController.position.pixels;
        state = state.copyWith(scrollPx: px);
        bool bol = px > height + 100 ? true : false;
        if (bol) {
          if (state.showFloatBtn == bol) return;
          state = state.copyWith(showFloatBtn: bol);
          Future.delayed(const Duration(milliseconds: 1000),
              () => state = state.copyWith(opacityBtn: bol));
        } else {
          if (state.opacityBtn == bol) return;
          state = state.copyWith(opacityBtn: bol);
          Future.delayed(const Duration(seconds: 1),
              () => state = state.copyWith(showFloatBtn: bol));
        }
      });
      EasyThrottle.throttle('scroll', const Duration(milliseconds: 500), () {
        var px = state.scrollController.position.pixels;
        if (px > state.scrollController.position.maxScrollExtent - gap) {
          onLoadMore();
        }
      });
    });
  }

  void initState<T>(fun, params) {
    if (params is Map<String, dynamic>) {
      state = state.copyWith(params: params);
    }
    if (fun is Future<dynamic> Function(Map<String, dynamic> arg)) {
      state = state.copyWith(onRefresh: fun);
    }
    initData();
  }

  Future<void> onLoadMore() async {
    if (state.load == 3) return;
    state = state.copyWith(load: 2);
    await initData();
  }

  Future<void> initData() async {
    if (state.onRefresh is! Future<dynamic> Function(
        Map<String, dynamic> arg)) {
      return;
    }

    if (state.loading == true) return;

    state = state.copyWith(loading: true);

    try {
      GoodsListEntity apiData = await state.onRefresh!({
        ...(state.params ?? {}),
        'pageCondition': {
          'pageNum': state.page,
          'pageSize': state.size,
        }
      });

      List<Item> data = apiData.pageResult?.items ?? [];

      if (state.page == 1) {
        state = state.copyWith(list: data);
      } else {
        state = state.copyWith(list: [...(state.list ?? []), ...data]);
      }
      state = state.copyWith(load: data.isEmpty ? 3 : 0, page: ++state.page);
    } catch (e) {}

    Future.delayed(const Duration(milliseconds: 500), () {
      state = state.copyWith(loading: false);
    });
  }

  Future<void> onRefresh() async {
    state = state.copyWith(load: 1);
    await initData();
  }

  void onTop() {
    state.scrollController.animateTo(0,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
