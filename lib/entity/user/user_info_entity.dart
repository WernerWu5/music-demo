// To parse this JSON data, do
//
//     final userInfoEntity = userInfoEntityFromJson(jsonString);

import 'dart:convert';

import 'package:hive/hive.dart';

UserInfoEntity userInfoEntityFromJson(String str) =>
    UserInfoEntity.fromJson(json.decode(str));

String userInfoEntityToJson(UserInfoEntity data) => json.encode(data.toJson());

@HiveType(typeId: 1)
class UserInfoEntity {
  @HiveField(0)
  UserInfo? userInfo;
  @HiveField(1)
  MerchantInfo? merchantInfo;
  @HiveField(2)
  List<UserLoginAccount>? userLoginAccounts;

  UserInfoEntity({
    this.userInfo,
    this.merchantInfo,
    this.userLoginAccounts,
  });

  factory UserInfoEntity.fromJson(Map<String, dynamic> json) => UserInfoEntity(
        userInfo: json["userInfo"] == null
            ? null
            : UserInfo.fromJson(json["userInfo"]),
        merchantInfo: json["merchantInfo"] == null
            ? null
            : MerchantInfo.fromJson(json["merchantInfo"]),
        userLoginAccounts: json["userLoginAccounts"] == null
            ? []
            : List<UserLoginAccount>.from(json["userLoginAccounts"]!
                .map((x) => UserLoginAccount.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "userInfo": userInfo?.toJson(),
        "merchantInfo": merchantInfo?.toJson(),
        "userLoginAccounts": userLoginAccounts == null
            ? []
            : List<dynamic>.from(userLoginAccounts!.map((x) => x.toJson())),
      };
}

class MerchantInfo {
  String? name;
  String? address;
  List<dynamic>? qualifications;
  String? status;
  String? merchantType;
  Level? level;

  MerchantInfo({
    this.name,
    this.address,
    this.qualifications,
    this.status,
    this.merchantType,
    this.level,
  });

  factory MerchantInfo.fromJson(Map<String, dynamic> json) => MerchantInfo(
        name: json["name"],
        address: json["address"],
        qualifications: json["qualifications"] == null
            ? []
            : List<dynamic>.from(json["qualifications"]!.map((x) => x)),
        status: json["status"],
        merchantType: json["merchantType"],
        level: json["level"] == null ? null : Level.fromJson(json["level"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "address": address,
        "qualifications": qualifications == null
            ? []
            : List<dynamic>.from(qualifications!.map((x) => x)),
        "status": status,
        "merchantType": merchantType,
        "level": level?.toJson(),
      };
}

class Level {
  String? levelName;

  Level({
    this.levelName,
  });

  factory Level.fromJson(Map<String, dynamic> json) => Level(
        levelName: json["levelName"],
      );

  Map<String, dynamic> toJson() => {
        "levelName": levelName,
      };
}

class UserInfo {
  String? username;
  String? nickName;
  String? email;
  String? avatarUrl;
  String? gender;
  bool? hasPwd;
  int? gmtCreate;

  UserInfo({
    this.username,
    this.nickName,
    this.email,
    this.avatarUrl,
    this.gender,
    this.hasPwd,
    this.gmtCreate,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
        username: json["username"],
        nickName: json["nickName"],
        email: json["email"],
        avatarUrl: json["avatarUrl"],
        gender: json["gender"],
        hasPwd: json["hasPwd"],
        gmtCreate: json["gmtCreate"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "nickName": nickName,
        "email": email,
        "avatarUrl": avatarUrl,
        "gender": gender,
        "hasPwd": hasPwd,
        "gmtCreate": gmtCreate,
      };
}

class UserLoginAccount {
  String? accountType;
  String? accountName;

  UserLoginAccount({
    this.accountType,
    this.accountName,
  });

  factory UserLoginAccount.fromJson(Map<String, dynamic> json) =>
      UserLoginAccount(
        accountType: json["accountType"],
        accountName: json["accountName"],
      );

  Map<String, dynamic> toJson() => {
        "accountType": accountType,
        "accountName": accountName,
      };
}

class UserDisplayEntity {
  String? username;
  String? userId;
  String? nickName;
  String? avatarUrl;
  List<String>? loginAccountTypes;

  UserDisplayEntity({
    this.username,
    this.userId,
    this.nickName,
    this.avatarUrl,
    this.loginAccountTypes,
  });

  factory UserDisplayEntity.fromRawJson(String str) =>
      UserDisplayEntity.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserDisplayEntity.fromJson(Map<String, dynamic> json) =>
      UserDisplayEntity(
        username: json["username"],
        userId: json["userId"],
        nickName: json["nickName"],
        avatarUrl: json["avatarUrl"],
        loginAccountTypes: json["loginAccountTypes"] == null
            ? []
            : List<String>.from(json["loginAccountTypes"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "userId": userId,
        "nickName": nickName,
        "avatarUrl": avatarUrl,
        "loginAccountTypes": loginAccountTypes == null
            ? []
            : List<dynamic>.from(loginAccountTypes!.map((x) => x)),
      };
}
