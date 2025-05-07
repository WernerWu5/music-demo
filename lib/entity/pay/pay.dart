import 'package:distribution_mall_flutter/generated/json/base/json_field.dart';
import 'package:distribution_mall_flutter/generated/json/pay.g.dart';

@JsonSerializable()
class OrderPaymentEntity {
  String? distributionOrderId;
  String? receiptPaymentId;
  String? paymentType;
  String? paymentMethodName;
  String? usageProcess;
  String? state;
  String? currency;
  double? paymentAmount;
  String? payParamsType;
  ExternalUrlParams? externalUrlParams;
  BankRemitParams? bankRemitParams;

  OrderPaymentEntity();

  factory OrderPaymentEntity.fromJson(Map<String, dynamic> json) =>
      $OrderPaymentEntityFromJson(json);

  Map<String, dynamic> toJson() => $OrderPaymentEntityToJson(this);
}

@JsonSerializable()
class BankRemitParams {
  String? bankAccountName;
  String? bankName;
  String? bankAccount;
  String? checkCode;
  String? description;

  BankRemitParams();

  factory BankRemitParams.fromJson(Map<String, dynamic> json) =>
      $BankRemitParamsFromJson(json);

  Map<String, dynamic> toJson() => $BankRemitParamsToJson(this);
}

@JsonSerializable()
class ExternalUrlParams {
  String? receiptUrl;
  String? qrCodeInfo;

  ExternalUrlParams();

  factory ExternalUrlParams.fromJson(Map<String, dynamic> json) =>
      $ExternalUrlParamsFromJson(json);

  Map<String, dynamic> toJson() => $ExternalUrlParamsToJson(this);
}

@JsonSerializable()
class PaymentStateEntity {
  String? receiptPaymentId;
  String? paymentState;

  PaymentStateEntity();

  factory PaymentStateEntity.fromJson(Map<String, dynamic> json) =>
      $PaymentStateEntityFromJson(json);

  Map<String, dynamic> toJson() => $PaymentStateEntityToJson(this);
}
