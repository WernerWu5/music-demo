import 'package:distribution_mall_flutter/generated/json/address_entity.g.dart';
import 'package:distribution_mall_flutter/generated/json/base/json_field.dart';

@JsonSerializable()
class AddressEntity {
  PageMeta? pageMeta;
  List<AddressItem>? items;

  AddressEntity();

  factory AddressEntity.fromJson(Map<String, dynamic> json) =>
      $AddressEntityFromJson(json);

  Map<String, dynamic> toJson() => $AddressEntityToJson(this);
}

@JsonSerializable()
class AddressItem {
  String? distributorAddressId;
  String? distributorId;
  String? recipientName;
  String? phone;
  String? country;
  String? province;
  String? city;
  String? district;
  String? street;
  String? detailInfo;
  String? backupDetailInfo;
  String? zip;
  String? virtualPostcode;
  bool? isDef;

  AddressItem();

  factory AddressItem.fromJson(Map<String, dynamic> json) =>
      $AddressItemFromJson(json);

  Map<String, dynamic> toJson() => $AddressItemToJson(this);

}

@JsonSerializable()
class PageMeta {
  int? pageNum;
  int? pageSize;
  int? total;
  int? pages;

  PageMeta();

  factory PageMeta.fromJson(Map<String, dynamic> json) =>
      $PageMetaFromJson(json);

  Map<String, dynamic> toJson() => $PageMetaToJson(this);
}

@JsonSerializable()
class AddressDeliveryTimeEntity {
  String? deliveryAddressId;
  String? logisticsProductId;
  String? logisticsProductCode;
  String? logisticsProductName;
  String? logisticsId;
  String? logisticsCode;
  String? logisticsName;
  String? carrierId;
  String? carrierCode;
  String? carrierName;
  String? transportType;
  String? description;
  int? minDeliveryTime;
  int? maxDeliveryTime;

  AddressDeliveryTimeEntity();

  factory AddressDeliveryTimeEntity.fromJson(Map<String, dynamic> json) =>
      $AddressDeliveryTimeEntityFromJson(json);

  Map<String, dynamic> toJson() => $AddressDeliveryTimeEntityToJson(this);
}
