import 'dart:convert';

import 'package:distribution_mall_flutter/generated/json/base/json_field.dart';
import 'package:distribution_mall_flutter/generated/json/goods_list_entity.g.dart';
export 'package:distribution_mall_flutter/generated/json/goods_list_entity.g.dart';

@JsonSerializable()
class GoodsListEntity {
  PageResult? pageResult;
  List<dynamic>? imageSearchCustomCodes;
  String? searchId;
  GoodsListEntity();

  factory GoodsListEntity.fromJson(Map<String, dynamic> json) =>
      $GoodsListEntityFromJson(json);

  Map<String, dynamic> toJson() => $GoodsListEntityToJson(this);
}

@JsonSerializable()
class PageResult {
  GoodsPageMeta? goodsPageMeta;
  List<Item>? items;
  PageResult();

  factory PageResult.fromJson(Map<String, dynamic> json) =>
      $PageResultFromJson(json);

  Map<String, dynamic> toJson() => $PageResultToJson(this);
}

@JsonSerializable()
class Item {
  String? saleUnitId;
  bool? sample;
  String? customCode;
  String? title;
  ImageInfo? imageInfo;
  BrandInfo? brandInfo;
  CategoryInfo? categoryInfo;
  PriceInfo? priceInfo;
  String? refSaleItemId;
  int? moq;
  int? maxMoq;
  String? locale;
  bool? isLocalShipping;
  String? shipsFrom;
  Item();

  factory Item.fromJson(Map<String, dynamic> json) => $ItemFromJson(json);

  Map<String, dynamic> toJson() => $ItemToJson(this);
}

@JsonSerializable()
class BrandInfo {
  String? brandId;
  String? brandName;
  BrandInfo();

  factory BrandInfo.fromJson(Map<String, dynamic> json) =>
      $BrandInfoFromJson(json);

  Map<String, dynamic> toJson() => $BrandInfoToJson(this);
}

@JsonSerializable()
class CategoryInfo {
  String? categoryId;
  String? categoryName;
  CategoryInfo();

  factory CategoryInfo.fromJson(Map<String, dynamic> json) =>
      $CategoryInfoFromJson(json);

  Map<String, dynamic> toJson() => $CategoryInfoToJson(this);
}

@JsonSerializable()
class ImageInfo {
  String? imageUrl;
  ImageInfo();

  factory ImageInfo.fromJson(Map<String, dynamic> json) =>
      $ImageInfoFromJson(json);

  Map<String, dynamic> toJson() => $ImageInfoToJson(this);
}

@JsonSerializable()
class PriceInfo {
  double? minSalePrice;
  double? maxSalePrice;
  double? maxSuggestedRetailPrice;
  double? minSuggestedRetailPrice;
  double? maxProfitPrice;
  double? minProfitPrice;
  String? salePriceCurrency;
  bool? isActivityPrice;
  double? originalMinSalePrice;
  double? originalMaxSalePrice;
  String? originalSalePriceCurrency;
  PriceInfo();

  factory PriceInfo.fromJson(Map<String, dynamic> json) =>
      $PriceInfoFromJson(json);

  Map<String, dynamic> toJson() => $PriceInfoToJson(this);
}

@JsonSerializable()
class GoodsPageMeta {
  int? pageNum;
  int? pageSize;
  int? total;
  int? pages;
  GoodsPageMeta();

  factory GoodsPageMeta.fromJson(Map<String, dynamic> json) =>
      $GoodsPageMetaFromJson(json);

  Map<String, dynamic> toJson() => $GoodsPageMetaToJson(this);
}
