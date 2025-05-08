import 'package:distribution_mall_flutter/constant/http_constant.dart';
import 'package:distribution_mall_flutter/http/init.dart';
import 'package:distribution_mall_flutter/http/response_data.dart';
import 'package:distribution_mall_flutter/pages/home/domain/music_entity.dart';

// https://itunes.apple.com/search?
// term=Talyor+Swift&limit=200&media=music

class MusicResult {
  final int resultCount;
  final List<MusicEntity> results;

  MusicResult({required this.resultCount, required this.results});

  factory MusicResult.fromJson(Map<String, dynamic> json) {
    return MusicResult(
      resultCount: json['resultCount'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => MusicEntity.fromJson(e))
          .toList(),
    );
  }
}

class MusicApi {
  // music列表
  static Future getMusicList(Map<String, dynamic> params) {
    return Request('https://itunes.apple.com', '/search').get(params);
  }
}
