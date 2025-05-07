// To parse this JSON data, do
//
//     final addressQueryEntity = addressQueryEntityFromJson(jsonString);

import 'dart:convert';

List<AddressQueryEntity> addressQueryEntityFromJson(List list) =>
    List<AddressQueryEntity>.from(
        list.map((x) => AddressQueryEntity.fromJson(x)));

String addressQueryEntityToJson(List<AddressQueryEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AddressQueryEntity {
  String? postcode;
  String? type;
  String? name;
  String? code;
  bool? leafNode;
  String? virtualPostcode;
  String? parentCode;

  AddressQueryEntity({
    this.postcode,
    this.type,
    this.name,
    this.code,
    this.leafNode,
    this.virtualPostcode,
    this.parentCode,
  });

  factory AddressQueryEntity.fromJson(Map<String, dynamic> json) =>
      AddressQueryEntity(
        postcode: json["postcode"],
        type: json["type"],
        name: json["name"],
        code: json["code"],
        leafNode: json["leafNode"],
        virtualPostcode: json["virtualPostcode"],
        parentCode: json["parentCode"],
      );

  Map<String, dynamic> toJson() => {
        "postcode": postcode,
        "type": type,
        "name": name,
        "code": code,
        "leafNode": leafNode,
        "virtualPostcode": virtualPostcode,
        "parentCode": parentCode,
      };
}
