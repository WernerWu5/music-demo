import 'dart:convert';

import 'package:distribution_mall_flutter/generated/json/base/json_field.dart';
import 'package:distribution_mall_flutter/generated/json/order.g.dart';

// 创建订单
@JsonSerializable()
class OrderCreateEntity {
  String? distributionOrderId;
  String? channelOrderNo;
  String? receiptPaymentId;
  String? state;
  double? goodsTotalAmount;
  double? totalAmount;
  int? paymentDeadline;

  OrderCreateEntity();

  factory OrderCreateEntity.fromJson(Map<String, dynamic> json) =>
      $OrderCreateEntityFromJson(json);

  Map<String, dynamic> toJson() => $OrderCreateEntityToJson(this);
}

// 订单运输类型
@JsonSerializable()
class OrderTransportEntity {
  String? code;
  String? name;
  String? desc;
  int? minDay;
  int? maxDay;
  int? estimateMinDay;
  int? estimateMaxDay;
  bool? isDisplay;
  bool? isIncludeShipFee;

  OrderTransportEntity();

  factory OrderTransportEntity.fromJson(Map<String, dynamic> json) =>
      $OrderTransportEntityFromJson(json);

  Map<String, dynamic> toJson() => $OrderTransportEntityToJson(this);
}

@JsonSerializable()
class SaleReasonEntity {
  String? reasonId;
  String? reasonCn;
  String? reasonEn;

  SaleReasonEntity();

  factory SaleReasonEntity.fromJson(Map<String, dynamic> json) =>
      $SaleReasonEntityFromJson(json);

  Map<String, dynamic> toJson() => $SaleReasonEntityToJson(this);
}
