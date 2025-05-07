import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/entity/pay/list/pay_list_entity.dart';
import 'package:hive/hive.dart';

part 'pay.g.dart';

@HiveType(typeId: HiveTypeIdConstant.payInfoFormatType)
class FormatType {
  @HiveField(0)
  String? type;
  @HiveField(1)
  String? typeDisplay;
  @HiveField(2)
  bool? typeDisplayable;
  @HiveField(3)
  late List<PaymentMethod> children;
}

@HiveType(typeId: HiveTypeIdConstant.payInfoEntirety)
class PayMethodInfo extends HiveObject {
  @HiveField(0)
  FormatType type;
  @HiveField(1)
  PaymentMethod paymentMethod;
  @HiveField(2)
  String methodCode;

  PayMethodInfo(
      {required this.type,
      required this.paymentMethod,
      required this.methodCode});

  @override
  String toString() {
    return 'PayMethodInfo{type: $type, paymentMethod: $paymentMethod, methodCode: $methodCode}';
  }
}
