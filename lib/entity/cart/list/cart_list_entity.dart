// To parse this JSON data, do
//
//     final cartListEntity = cartListEntityFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'cart_list_entity.freezed.dart';
part 'cart_list_entity.g.dart';

CartListEntity cartListEntityFromJson(String str) =>
    CartListEntity.fromJson(json.decode(str));

String cartListEntityToJson(CartListEntity data) => json.encode(data.toJson());

@freezed
class CartListEntity with _$CartListEntity {
  const factory CartListEntity({
    List<Result>? result,
    String? displaySaleTotalPrice,
  }) = _CartListEntity;

  factory CartListEntity.fromJson(Map<String, dynamic> json) =>
      _$CartListEntityFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    String? channelSaleUnitId,
    String? saleItemId,
    String? title,
    String? sellingPointDesc,
    List<dynamic>? keywords,
    List<dynamic>? mainImages,
    List<Spec>? specs,
    MainSpecInfo? mainSpecInfo,
    int? stockNum,
    int? moq,
    int? stepQuantity,
    String? salePrice,
    String? salePriceCurrency,
    String? displaySalePrice,
    String? displaySalePriceCurrency,
    int? quantityLimit,
    bool? isActivityPrice,
    String? originalSalePrice,
    String? originalSalePriceCurrency,
    String? originalDisplaySalePrice,
    String? brandName,
    String? categoryId,
    String? categoryName,
    String? saleState,
    String? originCountry,
    String? shipsFrom,
    bool? isLocalShipping,
    bool? isCanCod,
    String? grossWeight,
    String? packingLength,
    String? packingWidth,
    String? packingHeight,
    int? quantity,
    bool? selected,
    int? gmtCreate,
    bool? isCanOrder,
    String? reason,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class MainSpecInfo with _$MainSpecInfo {
  const factory MainSpecInfo({
    String? image,
    Spec? specItemInfo,
  }) = _MainSpecInfo;

  factory MainSpecInfo.fromJson(Map<String, dynamic> json) =>
      _$MainSpecInfoFromJson(json);
}

@freezed
class Spec with _$Spec {
  const factory Spec({
    String? specName,
    String? specValue,
    String? specType,
  }) = _Spec;

  factory Spec.fromJson(Map<String, dynamic> json) => _$SpecFromJson(json);
}
