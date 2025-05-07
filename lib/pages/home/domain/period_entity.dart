// To parse this JSON data, do
//
//     final periodEntity = periodEntityFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'period_entity.freezed.dart';
part 'period_entity.g.dart';

PeriodEntity periodEntityFromJson(String str) =>
    PeriodEntity.fromJson(json.decode(str));

String periodEntityToJson(PeriodEntity data) => json.encode(data.toJson());

@freezed
class PeriodEntityT with _$PeriodEntityT {
  const factory PeriodEntityT({
    required List<PeriodEntity> data,
  }) = _PeriodEntityT;

  factory PeriodEntityT.fromJson(Map<String, dynamic> json) =>
      _$PeriodEntityTFromJson(json);
}

@freezed
class PeriodEntity with _$PeriodEntity {
  const factory PeriodEntity({
    required String year,
    required String seq,
    required int totalSeq,
    required String date,
    required String N1,
    required String N2,
    required String N3,
    required String N4,
    required String N5,
    required String N6,
    required String N7,
  }) = _PeriodEntity;

  factory PeriodEntity.fromJson(Map<String, dynamic> json) =>
      _$PeriodEntityFromJson(json);
}
