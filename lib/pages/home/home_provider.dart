import 'package:distribution_mall_flutter/pages/home/domain/home_entity.dart';
import 'package:distribution_mall_flutter/pages/home/domain/music_entity.dart';
import 'package:distribution_mall_flutter/pages/home/domain/period_entity.dart';
import 'package:distribution_mall_flutter/pages/home/state/home_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_provider.g.dart';

@riverpod
class Home extends _$Home {
  @override
  HomeState build() {
    return const HomeState();
  }

  void setActiveSelect(List<dynamic> d) {
    state = state.copyWith(activeSelect: d);
  }

  void setLoading(bool d) {
    state = state.copyWith(loading: d);
  }

  // 设置搜索数据总数
  void setResultCount(int d) {
    state = state.copyWith(resultCount: d);
  }

  // 设置最新数据
  void setData(List<MusicEntity> d) {
    state = state.copyWith(data: d);
  }

  // 设置歌曲排序
  void setSongCacheData(List<List<MusicEntity>> d) {
    state = state.copyWith(songCacheData: d);
  }

  // 设置专辑排序
  void setCollectionCacheData(List<List<MusicEntity>> d) {
    state = state.copyWith(collectionCacheData: d);
  }

  // 清除缓存数据
  void clearCacheData() {
    state = state.copyWith(
      songCacheData: [],
      collectionCacheData: [],
    );
  }
}
