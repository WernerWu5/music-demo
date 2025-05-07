// To parse this JSON data, do
//
//     final musicEntity = musicEntityFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'music_entity.freezed.dart';
part 'music_entity.g.dart';

MusicEntity musicEntityFromJson(String str) =>
    MusicEntity.fromJson(json.decode(str));

String musicEntityToJson(MusicEntity data) => json.encode(data.toJson());

@freezed
class MusicEntity with _$MusicEntity {
  const factory MusicEntity({
    required String wrapperType,
    required String kind,
    required int artistId,
    required int collectionId,
    required int trackId,
    required String artistName,
    required String collectionName,
    required String trackName,
    required String collectionCensoredName,
    required String trackCensoredName,
    required String artistViewUrl,
    required String collectionViewUrl,
    required String trackViewUrl,
    required String previewUrl,
    required String artworkUrl30,
    required String artworkUrl60,
    required String artworkUrl100,
    required double collectionPrice,
    required double trackPrice,
    required DateTime releaseDate,
    required String collectionExplicitness,
    required String trackExplicitness,
    required int discCount,
    required int discNumber,
    required int trackCount,
    required int trackNumber,
    required int trackTimeMillis,
    required String country,
    required String currency,
    required String primaryGenreName,
    required bool isStreamable,
  }) = _MusicEntity;

  factory MusicEntity.fromJson(Map<String, dynamic> json) =>
      _$MusicEntityFromJson(json);
}
