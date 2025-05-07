import 'dart:convert';

class UserPasswordLogin {
  String? token;
  String? signSecret;

  UserPasswordLogin({this.token, this.signSecret});

  UserPasswordLogin.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    signSecret = json['signSecret'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['token'] = token;
    data['signSecret'] = signSecret;
    return data;
  }
}

// To parse this JSON data, do
//
//     final autoCodeEntity = autoCodeEntityFromJson(jsonString);

// To parse this JSON data, do
//
//     final autoCodeEntity = autoCodeEntityFromJson(jsonString);

AutoCodeEntity autoCodeEntityFromJson(String str) =>
    AutoCodeEntity.fromJson(json.decode(str));

String autoCodeEntityToJson(AutoCodeEntity data) => json.encode(data.toJson());

class AutoCodeEntity {
  final String? checkCode;
  final int? sendCoolDownSecond;
  final String? codeType;
  final int? codeLength;

  AutoCodeEntity({
    this.checkCode,
    this.sendCoolDownSecond,
    this.codeType,
    this.codeLength,
  });

  factory AutoCodeEntity.fromJson(Map<String, dynamic> json) => AutoCodeEntity(
        checkCode: json["checkCode"],
        sendCoolDownSecond: json["sendCoolDownSecond"],
        codeType: json["codeType"],
        codeLength: json["codeLength"],
      );

  Map<String, dynamic> toJson() => {
        "checkCode": checkCode,
        "sendCoolDownSecond": sendCoolDownSecond,
        "codeType": codeType,
        "codeLength": codeLength,
      };
}

// To parse this JSON data, do
//
//     final generateTokenEntity = generateTokenEntityFromJson(jsonString);

GenerateTokenEntity generateTokenEntityFromJson(String str) =>
    GenerateTokenEntity.fromJson(json.decode(str));

String generateTokenEntityToJson(GenerateTokenEntity data) =>
    json.encode(data.toJson());

class GenerateTokenEntity {
  final String? captchaToken;

  GenerateTokenEntity({
    this.captchaToken,
  });

  factory GenerateTokenEntity.fromJson(Map<String, dynamic> json) =>
      GenerateTokenEntity(
        captchaToken: json["captchaToken"],
      );

  Map<String, dynamic> toJson() => {
        "captchaToken": captchaToken,
      };
}
