// To parse this JSON data, do
//
//     final orderDetailEntity = orderDetailEntityFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'order_detail_entity.freezed.dart';
part 'order_detail_entity.g.dart';

OrderDetailEntity orderDetailEntityFromJson(String str) =>
    OrderDetailEntity.fromJson(json.decode(str));

String orderDetailEntityToJson(OrderDetailEntity data) =>
    json.encode(data.toJson());

@freezed
class OrderDetailEntity with _$OrderDetailEntity {
  const factory OrderDetailEntity({
    String? distributionOrderId,
    String? channelOrderNo,
    String? remark,
    String? state,
    String? orderType,
    String? tradeState,
    String? cancelState,
    String? cancelReason,
    int? gmtCreate,
    int? gmtPay,
    int? gmtDelivery,
    int? gmtFinish,
    int? paymentDeadline,
    int? gmtParentCreate,
    Amount? amount,
    Payment? payment,
    Consignee? consignee,
    List<OrderItemGroupList>? orderItemGroupList,
    List<OrderPromotionList>? orderPromotionList,
    String? transportType,
    String? transportTypeName,
    bool? isCod,
    bool? isCanCod,
    String? tradeOrderId,
    String? parentOrderId,
    bool? canCustomerDelete,
  }) = _OrderDetailEntity;

  factory OrderDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailEntityFromJson(json);
}

@freezed
class Amount with _$Amount {
  const factory Amount({
    String? currency,
    double? totalAmount,
    double? goodsTotalAmount,
    double? shippingAmount,
    double? goodsCollectionFreight,
    double? internationalLogisticsFreight,
    double? terminalLogisticsFreight,
    double? adjustAmount,
    double? tax,
    double? goodsDiscount,
    double? freightDiscount,
    double? activityDiscount,
    double? couponDiscount,
    double? activityGoodsDiscount,
    double? activityFreightDiscount,
    double? couponGoodsDiscount,
    double? couponFreightDiscount,
    double? totalDiscount,
    double? discount,
    List<ReceiptItemList>? receiptItemList,
  }) = _Amount;

  factory Amount.fromJson(Map<String, dynamic> json) => _$AmountFromJson(json);
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
    String? specUnit,
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
    double? subTotalAtOrderCurrency,
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
class OrderPromotionList with _$OrderPromotionList {
  const factory OrderPromotionList({
    String? promotionPlanId,
    String? promotionCode,
    String? promotionType,
    String? promotionTarget,
    double? discountAmount,
  }) = _OrderPromotionList;

  factory OrderPromotionList.fromJson(Map<String, dynamic> json) =>
      _$OrderPromotionListFromJson(json);
}

@freezed
class Payment with _$Payment {
  const factory Payment({
    String? paymentState,
    double? amountPaid,
    List<PaidListElement>? paidList,
    List<PaidListElement>? unPayList,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
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
