import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/generated/json/base/json_field.dart';
import 'package:distribution_mall_flutter/generated/json/pay_list_entity.g.dart';

import 'package:hive/hive.dart';

part 'pay_list_entity.g.dart';

@JsonSerializable()
class PayListEntity {
  List<PayListType> types = [];

  PayListEntity();

  factory PayListEntity.fromJson(Map<String, dynamic> json) =>
      $PayListEntityFromJson(json);

  Map<String, dynamic> toJson() => $PayListEntityToJson(this);
}

@JsonSerializable()
class PayListType {
  String? type;
  String? typeDisplay;
  bool? typeDisplayable;
  List<PayListPlatform>? platforms;

  PayListType();

  factory PayListType.fromJson(Map<String, dynamic> json) =>
      $PayListTypeFromJson(json);

  Map<String, dynamic> toJson() => $PayListTypeToJson(this);
}

@JsonSerializable()
class PayListPlatform {
  PayListPlatform();

  String? platform;
  PaymentMethod? paymentMethod;
  List<PaymentMethod>? channels;

  factory PayListPlatform.fromJson(Map<String, dynamic> json) =>
      $PayListPlatformFromJson(json);

  Map<String, dynamic> toJson() => $PayListPlatformToJson(this);
}

@JsonSerializable()
@HiveType(typeId: HiveTypeIdConstant.payInfoMethod)
class PaymentMethod {
  String? methodName;
  @HiveField(0)
  String? methodCode;
  @HiveField(1)
  String? subTitle;
  @HiveField(2)
  double? minPrice;
  @HiveField(3)
  double? maxPrice;
  @HiveField(4)
  bool? isUsable;
  @HiveField(5)
  bool? displayable;
  @HiveField(6)
  String? icon;
  @HiveField(7)
  List<PaymentMethodClientBank>? paymentMethodClientBank;

  PaymentMethod();

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      $PaymentMethodFromJson(json);

  Map<String, dynamic> toJson() => $PaymentMethodToJson(this);

  @override
  String toString() {
    return 'PaymentMethod{methodName: $methodName, methodCode: $methodCode, subTitle: $subTitle, minPrice: $minPrice, maxPrice: $maxPrice, isUsable: $isUsable, displayable: $displayable, icon: $icon, paymentMethodClientBank: $paymentMethodClientBank}';
  }
}

@JsonSerializable()
@HiveType(typeId: HiveTypeIdConstant.paymentMethodClientBank)
class PaymentMethodClientBank {
  PaymentMethodClientBank();

  @HiveField(0)
  String? clientId;
  @HiveField(1)
  String? bankId;
  @HiveField(2)
  String? bankName;
  @HiveField(3)
  String? bankCode;
  @HiveField(4)
  String? status;

  factory PaymentMethodClientBank.fromJson(Map<String, dynamic> json) =>
      $PaymentMethodClientBankFromJson(json);

  Map<String, dynamic> toJson() => $PaymentMethodClientBankToJson(this);
}
