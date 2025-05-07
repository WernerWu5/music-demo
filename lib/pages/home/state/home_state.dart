import 'package:distribution_mall_flutter/pages/home/domain/music_entity.dart';
import 'package:distribution_mall_flutter/pages/home/domain/period_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';
part 'home_state.g.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {@Default([]) List<MusicEntity> data,
      // 未搜索的情况下数据
      @Default([]) List<MusicEntity> emptySearchData,
      // 歌曲升序，降序缓存
      @Default([]) List<List<MusicEntity>> songCacheData,
      // 专辑升序，降序缓存
      @Default([]) List<List<MusicEntity>> collectionCacheData}) = _HomeState;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
}
