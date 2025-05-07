// To parse this JSON data; do
//
//     final goodsDetailEntity = goodsDetailEntityFromJson(jsonString);

import 'package:distribution_mall_flutter/generated/json/base/json_field.dart';
import 'package:distribution_mall_flutter/generated/json/goods_detail_entity.g.dart';


@JsonSerializable()
class GoodsDetailEntity {
  SuInfo? suInfo;
  ItemInfo? itemInfo;
  bool? onSale;
  String? totalPrice;
  bool? canOrder;
  String? reason;
  bool? canInShopcart;

  GoodsDetailEntity();

  factory GoodsDetailEntity.fromJson(Map<String, dynamic> json) =>
      $GoodsDetailEntityFromJson(json);

  Map<String, dynamic> toJson() => $GoodsDetailEntityToJson(this);
}

@JsonSerializable()
class ItemInfo{
  ItemInfo();
  String? saleItemId;
  String? title;
  String? codeEan;
  String? codeUpc;
  int? moq;
  int? deliveryDays;
  int? guarantyPeriod;
  double? netWeight;
  double? sizeLength;
  double? sizeWidth;
  double? sizeHeight;
  double? grossWeight;
  double? packingLength;
  double? packingWidth;
  double? packingHeight;
  String? measuringUnit;
  List<ItemInfoSpec>? specs;
  double? salePrice;
  String? salePriceCurrency;
  double? displaySalePrice;
  String? displaySalePriceCurrency;

  factory ItemInfo.fromJson(Map<String, dynamic> json) =>
      $ItemInfoFromJson(json);

  Map<String, dynamic> toJson() => $ItemInfoToJson(this);
}

@JsonSerializable()
class ItemInfoSpec {
  ItemInfoSpec();
  String? specName;
  String? specValue;
  String? specType;

  factory ItemInfoSpec.fromJson(Map<String, dynamic> json) =>
      $ItemInfoSpecFromJson(json);

  Map<String, dynamic> toJson() => $ItemInfoSpecToJson(this);
}

@JsonSerializable()
class SuInfo {
  SuInfo();
  String? title;
  String? categoryId;
  String? categoryName;
  String? brandId;
  String? brandName;
  String? brandLogo;
  String? sellingPointDesc;
  ShippingInfo? shippingInfo;
  bool? isCanCod;
  bool? sample;
  List<String>? mainImages;
  List<SuInfoSpec>? specs;
  List<Param>? params;
  String? textDesc;
  List<dynamic>? detailImages;
  List<ItemInfo>? itemInfos;
  SaleInfo? saleInfo;
  FollowInfo? followInfo;
  List<Sale>? saleInfos;
  List<TagInfo>? tagInfos;
  List<LadderPrice>? ladderPrice;
  List<SuInfoVideo>? detailVideos;
  int? startBatch;

  factory SuInfo.fromJson(Map<String, dynamic> json) => $SuInfoFromJson(json);

  Map<String, dynamic> toJson() => $SuInfoToJson(this);
}

@JsonSerializable()
class FollowInfo {
  FollowInfo();
  String? saleItemId;
  bool? isFollow;

  factory FollowInfo.fromJson(Map<String, dynamic> json) =>
      $FollowInfoFromJson(json);

  Map<String, dynamic> toJson() => $FollowInfoToJson(this);
}

@JsonSerializable()
class SuInfoVideo {
  SuInfoVideo();
  String imageUrl = '';
  String? videoUrl;

  factory SuInfoVideo.fromJson(Map<String, dynamic> json) =>
      $SuInfoVideoFromJson(json);

  Map<String, dynamic> toJson() => $SuInfoVideoToJson(this);
}

@JsonSerializable()
class LadderPrice {
  LadderPrice();
  String? ladder;
  double? price;

  factory LadderPrice.fromJson(Map<String, dynamic> json) =>
      $LadderPriceFromJson(json);

  Map<String, dynamic> toJson() => $LadderPriceToJson(this);
}

@JsonSerializable()
class Param {
  Param();
  String? paramName;
  List<dynamic>? values;

  factory Param.fromJson(Map<String, dynamic> json) => $ParamFromJson(json);

  Map<String, dynamic> toJson() => $ParamToJson(this);
}

@JsonSerializable()
class SaleInfo {
  SaleInfo();
  String? currency;
  String? displayCurrency;
  int? moq;
  int? minMoq;
  int? maxMoq;
  PriceRangeInfo? priceRangeInfo;
  List<Sale>? saleSpecs;

  factory SaleInfo.fromJson(Map<String, dynamic> json) =>
      $SaleInfoFromJson(json);

  Map<String, dynamic> toJson() => $SaleInfoToJson(this);
}

@JsonSerializable()
class PriceRangeInfo {
  PriceRangeInfo();
  double? displayMinPrice;
  double? displayMaxPrice;
  double? displayMinSuggestedRetailPrice;
  double? displayMaxSuggestedRetailPrice;
  double? displayMinProfitPrice;
  double? displayMaxProfitPrice;
  double? displayPrice;
  bool? isActivityPrice;
  double? activityPriceCurrency;
  double? originalDisplayMinSalePrice;
  double? originalDisplayMaxSalePrice;
  double? minPrice;
  double? maxPrice;
  int? moq;

  factory PriceRangeInfo.fromJson(Map<String, dynamic> json) =>
      $PriceRangeInfoFromJson(json);

  Map<String, dynamic> toJson() => $PriceRangeInfoToJson(this);
}

@JsonSerializable()
class Sale {
  Sale();
  String? saleItemId;
  String? currency;
  double? salePrice;
  bool? display;
  String? displayCurrency;
  double? displaySalePrice;
  double? displaySuggestedRetailPrice;
  double? displayProfitPrice;
  double? displayUnitPrice;
  int? moq;
  int? stockNum;
  int? quantityLimit;
  bool? isActivityPrice;
  String? originalCurrency;
  double? originalSalePrice;
  double? originalDisplaySalePrice;
  int? stepQuantity;
  List<SpecInfo>? specInfos;
  String? imagePic;
  bool? onSale;
  bool? sample;

  factory Sale.fromJson(Map<String, dynamic> json) => $SaleFromJson(json);

  Map<String, dynamic> toJson() => $SaleToJson(this);
}

@JsonSerializable()
class SpecInfo {
  SpecInfo();
  String? specName;
  String? specValue;
  String? specUnit;

  factory SpecInfo.fromJson(Map<String, dynamic> json) =>
      $SpecInfoFromJson(json);

  Map<String, dynamic> toJson() => $SpecInfoToJson(this);

}

@JsonSerializable()
class ShippingInfo {
  ShippingInfo();
  List<SkuShippingInfo>? skuShippingInfos;
  bool? isLocalShipping;
  String? shipsFrom;

  factory ShippingInfo.fromJson(Map<String, dynamic> json) =>
      $ShippingInfoFromJson(json);

  Map<String, dynamic> toJson() => $ShippingInfoToJson(this);
}

@JsonSerializable()
class SkuShippingInfo {
  SkuShippingInfo();
  String? saleItemId;
  String? estimateWeight;
  String? estimateType;
  String? estimateFreight;
  EstimateShippingInfoVo? estimateShippingInfoVo;

  factory SkuShippingInfo.fromJson(Map<String, dynamic> json) =>
      $SkuShippingInfoFromJson(json);

  Map<String, dynamic> toJson() => $SkuShippingInfoToJson(this);
}

@JsonSerializable()
class EstimateShippingInfoVo {
  EstimateShippingInfoVo();
  String? internationalLpId;
  String? internationalLpCode;
  String? internationalLpName;
  String? terminalLpId;
  String? terminalLpCode;
  String? terminalLpName;
  String? countryCode;
  String? city;
  String? freight;
  String? currency;

  factory EstimateShippingInfoVo.fromJson(Map<String, dynamic> json) =>
      $EstimateShippingInfoVoFromJson(json);

  Map<String, dynamic> toJson() => $EstimateShippingInfoVoToJson(this);
}

@JsonSerializable()
class SuInfoSpec {
  SuInfoSpec();
  String? specName;
  List<Value>? values;
  String? specType;

  factory SuInfoSpec.fromJson(Map<String, dynamic> json) =>
      $SuInfoSpecFromJson(json);

  Map<String, dynamic> toJson() => $SuInfoSpecToJson(this);
}

@JsonSerializable()
class Value {
  Value();
  String? valueId;
  String? valueName;
  String? imageUrl;
  List<dynamic>? includeItemIds;

  factory Value.fromJson(Map<String, dynamic> json) => $ValueFromJson(json);

  Map<String, dynamic> toJson() => $ValueToJson(this);
}

@JsonSerializable()
class TagInfo {
  TagInfo();
  String? id;
  String? name;

  factory TagInfo.fromJson(Map<String, dynamic> json) => $TagInfoFromJson(json);

  Map<String, dynamic> toJson() => $TagInfoToJson(this);
}
