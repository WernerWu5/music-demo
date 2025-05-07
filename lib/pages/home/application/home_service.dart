import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:deep_collection/deep_collection.dart';
import 'package:distribution_mall_flutter/base/base_service.dart';
import 'package:distribution_mall_flutter/constant/status_constant.dart';
import 'package:distribution_mall_flutter/http/modules/music.dart';
import 'package:distribution_mall_flutter/pages/home/domain/period_entity.dart';
import 'package:distribution_mall_flutter/pages/home/home_provider.dart';
import 'package:distribution_mall_flutter/utils/utils.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_service.g.dart';

class HomeService extends BaseService {
  HomeService(super.ref);

  @override
  onReady() {
    readData();
  }

  // 读取数据
  Future<void> readData({Map<String, dynamic>? params}) async {
    // term=Talyor+Swift&limit=200&media=music
    MusicApi.getMusicList({'limit': 200, 'media': 'music', ...(params ?? {})});
  }

  // 搜索数据
  search(String str) {
    Map<String, dynamic> params = {};
    if (str.isNotEmpty) {
      params['term'] = str.replaceAll(RegExp(r'\s+'), '+');
    }
    readData(params: params);
  }

  // 排序数据 0为降序，1为升序
  sortData({int sort = MusicSort.as, String? type}) {
    final emptySearchData = ref.read(homeProvider).emptySearchData;
    // 歌曲排序
    if (type == MusicType.song) {
      return;
    }
    // 专辑排序
    if (type == MusicType.song) {
      return;
    }
  }
}

@riverpod
HomeService homeService(HomeServiceRef ref) {
  return HomeService(ref);
}
