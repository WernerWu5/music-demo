import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:deep_collection/deep_collection.dart';
import 'package:distribution_mall_flutter/base/base_service.dart';
import 'package:distribution_mall_flutter/constant/status_constant.dart';
import 'package:distribution_mall_flutter/http/modules/music.dart';
import 'package:distribution_mall_flutter/pages/home/domain/music_entity.dart';
import 'package:distribution_mall_flutter/pages/home/domain/period_entity.dart';
import 'package:distribution_mall_flutter/pages/home/home_provider.dart';
import 'package:distribution_mall_flutter/utils/utils.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:oktoast/oktoast.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_service.g.dart';

class HomeService extends BaseService {
  HomeService(super.ref);

  @override
  onReady() {
    // readData();
  }

  // 读取数据
  Future<void> readData({Map<String, dynamic>? params}) async {
    // term=Talyor+Swift&limit=200&media=music
    ref.read(homeProvider.notifier).setLoading(true);
    try {
      final res = await MusicApi.getMusicList(
          {'limit': 200, 'media': 'music', ...(params ?? {})});
      final temp = List<MusicEntity>.from(
          res?['results']?.map((item) => MusicEntity.fromJson(item)));
      ref.read(homeProvider.notifier).setResultCount(res?['resultCount'] ?? 0);
      print('=======1');
      ref.read(homeProvider.notifier).setData(temp);
    } finally {
      ref.read(homeProvider.notifier).setLoading(false);
    }
  }

  // 搜索数据
  search(String str) {
    Map<String, dynamic> params = {};
    if (str.isNotEmpty) {
      params['term'] = str.replaceAll(RegExp(r'\s+'), '+');
    }
    ref.read(homeProvider.notifier).setActiveSelect([]);
    // 清除缓存数据
    ref.read(homeProvider.notifier).clearCacheData();
    readData(params: params);
  }

  // 排序数据 0为降序，1为升序
  sortData({int sort = MusicSort.as, required String type}) {
    final data = ref.read(homeProvider).data;
    final songCacheData = ref.read(homeProvider).songCacheData;
    final collectionCacheData = ref.read(homeProvider).collectionCacheData;
    if (data.isEmpty) {
      showToast('暂无数据');
      return;
    }
    ref.read(homeProvider.notifier).setActiveSelect([type, sort]);
    // 歌曲排序
    if (type == MusicType.song) {
      if (songCacheData.isNotEmpty && songCacheData[sort].isNotEmpty) {
        // 有缓存直接返回
        print('=======2');
        ref.read(homeProvider.notifier).setData(songCacheData[sort]);
        return;
      }
    }
    // 专辑排序
    if (type == MusicType.collection) {
      if (collectionCacheData.isNotEmpty &&
          collectionCacheData[sort].isNotEmpty) {
        // 有缓存直接返回
        print('=======3');
        ref.read(homeProvider.notifier).setData(collectionCacheData[sort]);
        return;
      }
    }
    print('=======4');
    setSortData(sort: sort, type: type);
  }

  // 设置排序数据
  setSortData({required int sort, required String type}) {
    final List<MusicEntity> data = List.from(ref.read(homeProvider).data);
    final List<List<MusicEntity>> songCacheData =
        List.from(ref.read(homeProvider).songCacheData);
    final List<List<MusicEntity>> collectionCacheData =
        List.from(ref.read(homeProvider).collectionCacheData);
    print('=======data ${data.length}');
    data.sort((a, b) {
      if ((a.trackName?.isEmpty ?? true) ||
          (a.collectionName?.isEmpty ?? true)) {
        return 1;
      }
      if ((b.trackName?.isEmpty ?? true) ||
          (b.collectionName?.isEmpty ?? true)) {
        return -1;
      }
      if (type == MusicType.song) {
        return sort == MusicSort.as
            ? a.trackName!.compareTo(b.trackName!)
            : b.trackName!.compareTo(a.trackName!);
      }
      return sort == MusicSort.as
          ? a.collectionName!.compareTo(b.collectionName!)
          : b.collectionName!.compareTo(a.collectionName!);
    });
    ref.read(homeProvider.notifier).setData(data);
    // 这里的排序是为了给缓存数据用的
    if (type == MusicType.song) {
      if (songCacheData.isEmpty) songCacheData.add([]);
      songCacheData.insert(sort, data);
      ref.read(homeProvider.notifier).setSongCacheData(songCacheData);
      return;
    }
    if (collectionCacheData.isEmpty) collectionCacheData.add([]);
    collectionCacheData.insert(sort, data);
    ref.read(homeProvider.notifier).setCollectionCacheData(collectionCacheData);
  }
}

@riverpod
HomeService homeService(HomeServiceRef ref) {
  return HomeService(ref);
}
