// To parse this JSON data, do
//
//     final appInfoEntity = appInfoEntityFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'home_entity.freezed.dart';
part 'home_entity.g.dart';

AppInfoEntity appInfoEntityFromJson(String str) =>
    AppInfoEntity.fromJson(json.decode(str));

String appInfoEntityToJson(AppInfoEntity data) => json.encode(data.toJson());

@freezed
class AppInfoEntity with _$AppInfoEntity {
  const factory AppInfoEntity({
    String? appVersionNo,
    String? appVersionNoV2,
    String? appDownloadUrl,
    List<String>? packageList,
    List<String>? hardList,
    List<String>? updatePatchList,
    String? type,
    bool? force,
    String? content,
    bool? silently,
    bool? isSilently,
    bool? isTest,
    String? homeNewUserUrl,
    String? homeImgUrl,
    String? apkDownloadUrl,
    String? updateTime,
    String? iosVersion,
    String? iosVersionV2,
    String? googleVersion,
    bool? noShowCancel,
    bool? showCamera,
    bool? showPrice,
    bool? showFilterPrice,
    bool? showThirdparty,
    String? trackingUrl,
    String? googleMallUrl,
    String? apkMallUrl,
    String? iosMallUrl,
    bool? onlySkipApkMallUrl,
    List<String>? userWhiteList,
  }) = _AppInfoEntity;

  factory AppInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$AppInfoEntityFromJson(json);
}
