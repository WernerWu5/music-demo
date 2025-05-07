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

  void setData(List<MusicEntity> d) {
    state = state.copyWith(data: d);
  }
}
