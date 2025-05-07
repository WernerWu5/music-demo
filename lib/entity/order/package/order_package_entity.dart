// To parse this JSON data, do
//
//     final orderPackageEntity = orderPackageEntityFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'order_package_entity.freezed.dart';
part 'order_package_entity.g.dart';

List<OrderPackageEntity> orderPackageEntityFromJson(List str) =>
    List<OrderPackageEntity>.from(
        str.map((x) => OrderPackageEntity.fromJson(x)));

String orderPackageEntityToJson(List<OrderPackageEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class OrderPackageEntity with _$OrderPackageEntity {
  const factory OrderPackageEntity({
    String? orderPackageId,
    String? distributionOrderId,
    String? originalPackageId,
    String? firstLogisticsProductId,
    String? firstLogisticsProductCode,
    String? firstLogisticsProductName,
    String? lastLogisticsProductId,
    String? lastLogisticsProductCode,
    String? lastLogisticsProductName,
    List<ShippingInfo>? purchaseShippingInfos,
    List<ShippingInfo>? firstShippingInfos,
    List<ShippingInfo>? lastShippingInfos,
    String? transportType,
    String? transportTypeName,
    bool? isLocalShip,
    bool? isCod,
    String? shipFrom,
    String? state,
    double? length,
    double? width,
    double? height,
    double? weight,
    double? realFreight,
    String? realFreightCurrency,
    List<GoodsList>? goodsList,
  }) = _OrderPackageEntity;

  factory OrderPackageEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderPackageEntityFromJson(json);
}

@freezed
class ShippingInfo with _$ShippingInfo {
  const factory ShippingInfo({
    String? logisticsCarrierCode,
    String? shippingMethod,
    String? logisticsTrackNumber,
  }) = _ShippingInfo;

  factory ShippingInfo.fromJson(Map<String, dynamic> json) =>
      _$ShippingInfoFromJson(json);
}

@freezed
class GoodsList with _$GoodsList {
  const factory GoodsList({
    String? saleItemId,
    String? title,
    String? mainImage,
    int? quantity,
    List<Spec>? specs,
    double? salePrice,
    String? salePriceCurrency,
    double? salePriceAtOrderCurrency,
    String? shipFrom,
  }) = _GoodsList;

  factory GoodsList.fromJson(Map<String, dynamic> json) =>
      _$GoodsListFromJson(json);
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
