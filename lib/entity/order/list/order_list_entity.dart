// To parse this JSON data, do
//
//     final orderListEntity = orderListEntityFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'order_list_entity.freezed.dart';
part 'order_list_entity.g.dart';

OrderListEntity orderListEntityFromJson(String str) =>
    OrderListEntity.fromJson(json.decode(str));

String orderListEntityToJson(OrderListEntity data) =>
    json.encode(data.toJson());

@freezed
class OrderListEntity with _$OrderListEntity {
  const factory OrderListEntity({
    PageMeta? pageMeta,
    List<Item>? items,
  }) = _OrderListEntity;

  factory OrderListEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderListEntityFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    String? distributionOrderId,
    String? channelOrderNo,
    String? currency,
    String? goodsTotalAmount,
    double? goodsCollectionFreight,
    double? internationalLogisticsFreight,
    double? terminalLogisticsFreight,
    double? shippingAmount,
    double? totalAmount,
    List<ReceiptItemList>? receiptItemList,
    List<PaidListElement>? unPayList,
    List<PaidListElement>? paidList,
    String? state,
    String? paymentState,
    String? orderType,
    int? gmtCreate,
    int? gmtPay,
    int? gmtDelivery,
    int? gmtFinish,
    int? gmtParentCreate,
    int? paymentDeadline,
    String? cancelState,
    List<OrderItemGroupList>? orderItemGroupList,
    String? transportType,
    bool? isCod,
    bool? isCanCod,
    String? remark,
    String? parentOrderId,
    Consignee? consignee,
    bool? canCustomerDelete,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Consignee with _$Consignee {
  const factory Consignee({
    String? phone,
    String? phoneNumber,
    String? name,
    String? country,
    String? province,
    String? city,
    String? district,
    String? street,
    String? detailInfo,
    String? zip,
    String? virtualPostcode,
  }) = _Consignee;

  factory Consignee.fromJson(Map<String, dynamic> json) =>
      _$ConsigneeFromJson(json);
}

@freezed
class OrderItemGroupList with _$OrderItemGroupList {
  const factory OrderItemGroupList({
    bool? isLocalShipping,
    String? transportType,
    bool? isCanCod,
    List<OrderSuItemList>? orderSuItemList,
  }) = _OrderItemGroupList;

  factory OrderItemGroupList.fromJson(Map<String, dynamic> json) =>
      _$OrderItemGroupListFromJson(json);
}

@freezed
class OrderSuItemList with _$OrderSuItemList {
  const factory OrderSuItemList({
    String? title,
    String? mainImage,
    List<OrderGoodsList>? orderGoodsList,
    String? subItemId,
  }) = _OrderSuItemList;

  factory OrderSuItemList.fromJson(Map<String, dynamic> json) =>
      _$OrderSuItemListFromJson(json);
}

@freezed
class OrderGoodsList with _$OrderGoodsList {
  const factory OrderGoodsList({
    String? saleItemId,
    String? subItemId,
    AfterSale? afterSale,
    String? channelSaleUnitId,
    String? title,
    String? mainImage,
    List<Spec>? specs,
    String? spec,
    int? quantity,
    int? moq,
    int? stockNum,
    double? salePrice,
    String? salePriceCurrency,
    double? salePriceAtOrderCurrency,
    bool? isLocalShipping,
    String? shipsFrom,
    String? transportType,
    String? internationalLpId,
    String? internationalLpCode,
    String? internationalLpName,
    String? terminalLpId,
    String? terminalLpCode,
    String? terminalLpName,
    double? tax,
    double? totalDiscount,
    double? discount,
    double? activityGoodsDiscount,
    double? activityFreightDiscount,
    double? couponGoodsDiscount,
    double? couponFreightDiscount,
    double? goodsDiscount,
    double? freightDiscount,
    double? activityDiscount,
    double? couponDiscount,
    double? shippingAmount,
    double? goodsCollectionFreight,
    double? internationalLogisticsFreight,
    double? terminalLogisticsFreight,
    bool? isCanCod,
  }) = _OrderGoodsList;

  factory OrderGoodsList.fromJson(Map<String, dynamic> json) =>
      _$OrderGoodsListFromJson(json);
}

@freezed
class AfterSale with _$AfterSale {
  const factory AfterSale({
    String? distributionAfterSaleId,
    String? distributionAfterSaleState,
  }) = _AfterSale;

  factory AfterSale.fromJson(Map<String, dynamic> json) =>
      _$AfterSaleFromJson(json);
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

@freezed
class PaidListElement with _$PaidListElement {
  const factory PaidListElement({
    String? receiptPaymentId,
    String? receiptPaymentNo,
    String? paymentType,
    String? paymentMethodName,
    String? currency,
    double? amount,
    double? amountPaid,
    int? gmtPay,
    String? originPaymentId,
    String? paymentState,
    bool? isQrCode,
  }) = _PaidListElement;

  factory PaidListElement.fromJson(Map<String, dynamic> json) =>
      _$PaidListElementFromJson(json);
}

@freezed
class ReceiptItemList with _$ReceiptItemList {
  const factory ReceiptItemList({
    String? receiptType,
    String? receiptDesc,
    String? currency,
    double? amount,
    String? receiptState,
  }) = _ReceiptItemList;

  factory ReceiptItemList.fromJson(Map<String, dynamic> json) =>
      _$ReceiptItemListFromJson(json);
}

@freezed
class PageMeta with _$PageMeta {
  const factory PageMeta({
    int? pageNum,
    int? pageSize,
    int? total,
    int? pages,
  }) = _PageMeta;

  factory PageMeta.fromJson(Map<String, dynamic> json) =>
      _$PageMetaFromJson(json);
}
