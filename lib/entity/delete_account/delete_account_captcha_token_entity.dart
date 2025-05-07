import 'package:distribution_mall_flutter/generated/json/base/json_field.dart';
import 'package:distribution_mall_flutter/generated/json/delete_account_captcha_token_entity.g.dart';
import 'dart:convert';
export 'package:distribution_mall_flutter/generated/json/delete_account_captcha_token_entity.g.dart';

@JsonSerializable()
class DeleteAccountCaptchaTokenBody {
  late String captchaToken;

  DeleteAccountCaptchaTokenBody();

  factory DeleteAccountCaptchaTokenBody.fromJson(Map<String, dynamic> json) =>
      $DeleteAccountCaptchaTokenBodyFromJson(json);

  Map<String, dynamic> toJson() => $DeleteAccountCaptchaTokenBodyToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
