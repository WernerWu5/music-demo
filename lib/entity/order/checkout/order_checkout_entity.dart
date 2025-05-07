import 'package:distribution_mall_flutter/entity/pay/list/pay_list_entity.dart';
import 'package:distribution_mall_flutter/generated/json/base/json_field.dart';
import 'package:distribution_mall_flutter/generated/json/order_checkout_entity.g.dart';

@JsonSerializable()
class OrderCheckoutEntity {
  String? currency;
  String goodsTotalAmount = '';
  double? totalAmount;
  double? tax;
  double? activityGoodsDiscount;
  double? activityFreightDiscount;
  double? couponGoodsDiscount;
  double? couponFreightDiscount;
  double? activityDiscount;
  double? couponDiscount;
  double? totalDiscount;
  String discount = '';
  double? freightDiscount;
  double? goodsDiscount;
  String shippingAmount = '';
  double? goodsCollectionFreight;
  double? internationalLogisticsFreight;
  double? terminalLogisticsFreight;
  List<OrderItemGroupList>? orderItemGroupList;
  List<OrderPromotionList>? orderPromotionList;
  PayListEntity? paymentMethodList;
  bool? isCanCod;

  OrderCheckoutEntity();

  factory OrderCheckoutEntity.fromJson(Map<String, dynamic> json) =>
      $OrderCheckoutEntityFromJson(json);

  Map<String, dynamic> toJson() => $OrderCheckoutEntityToJson(this);
}

@JsonSerializable()
class OrderItemGroupList {
  bool? isLocalShipping;
  String? transportType;
  bool? isCanCod;
  List<OrderSuItemList>? orderSuItemList;

  OrderItemGroupList();

  factory OrderItemGroupList.fromJson(Map<String, dynamic> json) =>
      $OrderItemGroupListFromJson(json);

  Map<String, dynamic> toJson() => $OrderItemGroupListToJson(this);
}

@JsonSerializable()
class OrderSuItemList {
  String? title;
  String? mainImage;
  List<OrderGoodsList>? orderGoodsList;
  String? subItemId;

  OrderSuItemList();

  factory OrderSuItemList.fromJson(Map<String, dynamic> json) =>
      $OrderSuItemListFromJson(json);

  Map<String, dynamic> toJson() => $OrderSuItemListToJson(this);
}

@JsonSerializable()
class OrderGoodsList {
  String? saleItemId;
  String? subItemId;
  AfterSale? afterSale;
  String? channelSaleUnitId;
  String? title;
  String? mainImage;
  List<Spec>? specs;
  String? spec;
  int? quantity;
  int? moq;
  int? stockNum;
  double? salePrice;
  String? salePriceCurrency;
  double? salePriceAtOrderCurrency;
  bool? isLocalShipping;
  String? shipsFrom;
  String? transportType;
  String? internationalLpId;
  String? internationalLpCode;
  String? internationalLpName;
  String? terminalLpId;
  String? terminalLpCode;
  String? terminalLpName;
  double? tax;
  double? totalDiscount;
  double? discount;
  double? activityGoodsDiscount;
  double? activityFreightDiscount;
  double? couponGoodsDiscount;
  double? couponFreightDiscount;
  double? goodsDiscount;
  double? freightDiscount;
  double? activityDiscount;
  double? couponDiscount;
  double? shippingAmount;
  double? goodsCollectionFreight;
  double? internationalLogisticsFreight;
  double? terminalLogisticsFreight;
  bool? isCanCod;

  OrderGoodsList();

  factory OrderGoodsList.fromJson(Map<String, dynamic> json) =>
      $OrderGoodsListFromJson(json);

  Map<String, dynamic> toJson() => $OrderGoodsListToJson(this);
}

@JsonSerializable()
class AfterSale {
  String? distributionAfterSaleId;
  String? distributionAfterSaleState;

  AfterSale();

  factory AfterSale.fromJson(Map<String, dynamic> json) =>
      $AfterSaleFromJson(json);

  Map<String, dynamic> toJson() => $AfterSaleToJson(this);
}

@JsonSerializable()
class Spec {
  String? specName;
  String? specValue;
  String? specType;

  Spec();

  factory Spec.fromJson(Map<String, dynamic> json) => $SpecFromJson(json);

  Map<String, dynamic> toJson() => $SpecToJson(this);
}

@JsonSerializable()
class OrderPromotionList {
  String promotionPlanId = '';
  String promotionCode = '';
  String promotionType = '';
  String promotionTarget = '';
  String discountAmount = '';

  OrderPromotionList();

  factory OrderPromotionList.fromJson(Map<String, dynamic> json) =>
      $OrderPromotionListFromJson(json);

  Map<String, dynamic> toJson() => $OrderPromotionListToJson(this);
}
