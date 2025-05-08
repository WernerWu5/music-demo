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
    String? wrapperType,
    String? kind,
    int? artistId,
    int? collectionId,
    int? trackId,
    String? artistName,
    String? collectionName,
    String? trackName,
    String? collectionCensoredName,
    String? trackCensoredName,
    String? artistViewUrl,
    String? collectionViewUrl,
    String? trackViewUrl,
    String? previewUrl,
    String? artworkUrl30,
    String? artworkUrl60,
    String? artworkUrl100,
    double? collectionPrice,
    double? trackPrice,
    String? releaseDate,
    String? collectionExplicitness,
    String? trackExplicitness,
    int? discCount,
    int? discNumber,
    int? trackCount,
    int? trackNumber,
    int? trackTimeMillis,
    String? country,
    String? currency,
    String? primaryGenreName,
    bool? isStreamable,
  }) = _MusicEntity;

  factory MusicEntity.fromJson(Map<String, dynamic> json) =>
      _$MusicEntityFromJson(json);
}
