// To parse this JSON data, do
//
//     final calculateEntity = calculateEntityFromJson(jsonString);

import 'dart:convert';

CalculateEntity calculateEntityFromJson(String str) =>
    CalculateEntity.fromJson(json.decode(str));

String calculateEntityToJson(CalculateEntity data) =>
    json.encode(data.toJson());

class CalculateEntity {
  final double? totalPrice;
  final double? totalProfitPrice;
  final bool? canOrder;
  final String? reason;
  final bool? canInShopcart;

  CalculateEntity({
    this.totalPrice,
    this.totalProfitPrice,
    this.canOrder,
    this.reason,
    this.canInShopcart,
  });

  factory CalculateEntity.fromJson(Map<String, dynamic> json) =>
      CalculateEntity(
        totalPrice: json["totalPrice"],
        canOrder: json["canOrder"],
        reason: json["reason"],
        canInShopcart: json["canInShopcart"],
        totalProfitPrice: json["totalProfitPrice"],
      );

  Map<String, dynamic> toJson() => {
        "totalPrice": totalPrice,
        "canOrder": canOrder,
        "reason": reason,
        "canInShopcart": canInShopcart,
        "totalProfitPrice": totalProfitPrice,
      };
}
