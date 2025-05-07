// To parse this JSON data, do
//
//     final orderTraceEntity = orderTraceEntityFromJson(jsonString);

import 'dart:convert';

List<OrderTraceEntity> orderTraceEntityFromJson(List arr) =>
    List<OrderTraceEntity>.from(arr.map((x) => OrderTraceEntity.fromJson(x)));

String orderTraceEntityToJson(List<OrderTraceEntity> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OrderTraceEntity {
  final String? distributionOrderId;
  final String? channelOrderNo;
  final String? state;
  final String? paymentState;
  final String? cancelState;
  final int? gmtCreate;
  final int? gmtDelivery;
  final int? gmtDispatched;
  final int? gmtFinish;
  final int? gmtParentCreate;
  final int? paymentDeadline;
  final String? transportType;
  final bool? isCod;
  final String? remark;
  final String? parentOrderId;
  final List<OrderGoodsList>? orderGoodsList;
  final List<RouteInfoResult>? routeInfoResult;

  OrderTraceEntity({
    this.distributionOrderId,
    this.channelOrderNo,
    this.state,
    this.paymentState,
    this.cancelState,
    this.gmtCreate,
    this.gmtDelivery,
    this.gmtDispatched,
    this.gmtFinish,
    this.gmtParentCreate,
    this.paymentDeadline,
    this.transportType,
    this.isCod,
    this.remark,
    this.parentOrderId,
    this.orderGoodsList,
    this.routeInfoResult,
  });

  factory OrderTraceEntity.fromJson(Map<String, dynamic> json) =>
      OrderTraceEntity(
        distributionOrderId: json["distributionOrderId"],
        channelOrderNo: json["channelOrderNo"],
        state: json["state"],
        paymentState: json["paymentState"],
        cancelState: json["cancelState"],
        gmtCreate: json["gmtCreate"],
        gmtDelivery: json["gmtDelivery"],
        gmtDispatched: json["gmtDispatched"],
        gmtFinish: json["gmtFinish"],
        gmtParentCreate: json["gmtParentCreate"],
        paymentDeadline: json["paymentDeadline"],
        transportType: json["transportType"],
        isCod: json["isCod"],
        remark: json["remark"],
        parentOrderId: json["parentOrderId"],
        orderGoodsList: json["orderGoodsList"] == null
            ? []
            : List<OrderGoodsList>.from(
                json["orderGoodsList"]!.map((x) => OrderGoodsList.fromJson(x))),
        routeInfoResult: json["routeInfoResult"] == null
            ? []
            : List<RouteInfoResult>.from(json["routeInfoResult"]!
                .map((x) => RouteInfoResult.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "distributionOrderId": distributionOrderId,
        "channelOrderNo": channelOrderNo,
        "state": state,
        "paymentState": paymentState,
        "cancelState": cancelState,
        "gmtCreate": gmtCreate,
        "gmtDelivery": gmtDelivery,
        "gmtDispatched": gmtDispatched,
        "gmtFinish": gmtFinish,
        "gmtParentCreate": gmtParentCreate,
        "paymentDeadline": paymentDeadline,
        "transportType": transportType,
        "isCod": isCod,
        "remark": remark,
        "parentOrderId": parentOrderId,
        "orderGoodsList": orderGoodsList == null
            ? []
            : List<dynamic>.from(orderGoodsList!.map((x) => x.toJson())),
        "routeInfoResult": routeInfoResult == null
            ? []
            : List<dynamic>.from(routeInfoResult!.map((x) => x.toJson())),
      };
}

class OrderGoodsList {
  final String? saleItemId;
  final String? subItemId;
  final AfterSale? afterSale;
  final String? channelSaleUnitId;
  final String? title;
  final String? mainImage;
  final List<Spec>? specs;
  final String? spec;
  final int? quantity;
  final int? moq;
  final int? stockNum;
  final double? salePrice;
  final String? salePriceCurrency;
  final double? salePriceAtOrderCurrency;
  final bool? isLocalShipping;
  final String? shipsFrom;
  final String? transportType;
  final String? internationalLpId;
  final String? internationalLpCode;
  final String? internationalLpName;
  final String? terminalLpId;
  final String? terminalLpCode;
  final String? terminalLpName;
  final double? tax;
  final double? totalDiscount;
  final double? discount;
  final dynamic? activityGoodsDiscount;
  final dynamic? activityFreightDiscount;
  final dynamic? couponGoodsDiscount;
  final dynamic? couponFreightDiscount;
  final dynamic? goodsDiscount;
  final dynamic? freightDiscount;
  final dynamic? activityDiscount;
  final dynamic? couponDiscount;
  final dynamic? shippingAmount;
  final dynamic? goodsCollectionFreight;
  final dynamic? internationalLogisticsFreight;
  final dynamic? terminalLogisticsFreight;
  final bool? isCanCod;

  OrderGoodsList({
    this.saleItemId,
    this.subItemId,
    this.afterSale,
    this.channelSaleUnitId,
    this.title,
    this.mainImage,
    this.specs,
    this.spec,
    this.quantity,
    this.moq,
    this.stockNum,
    this.salePrice,
    this.salePriceCurrency,
    this.salePriceAtOrderCurrency,
    this.isLocalShipping,
    this.shipsFrom,
    this.transportType,
    this.internationalLpId,
    this.internationalLpCode,
    this.internationalLpName,
    this.terminalLpId,
    this.terminalLpCode,
    this.terminalLpName,
    this.tax,
    this.totalDiscount,
    this.discount,
    this.activityGoodsDiscount,
    this.activityFreightDiscount,
    this.couponGoodsDiscount,
    this.couponFreightDiscount,
    this.goodsDiscount,
    this.freightDiscount,
    this.activityDiscount,
    this.couponDiscount,
    this.shippingAmount,
    this.goodsCollectionFreight,
    this.internationalLogisticsFreight,
    this.terminalLogisticsFreight,
    this.isCanCod,
  });

  factory OrderGoodsList.fromJson(Map<String, dynamic> json) => OrderGoodsList(
        saleItemId: json["saleItemId"],
        subItemId: json["subItemId"],
        afterSale: json["afterSale"] == null
            ? null
            : AfterSale.fromJson(json["afterSale"]),
        channelSaleUnitId: json["channelSaleUnitId"],
        title: json["title"],
        mainImage: json["mainImage"],
        specs: json["specs"] == null
            ? []
            : List<Spec>.from(json["specs"]!.map((x) => Spec.fromJson(x))),
        spec: json["spec"],
        quantity: json["quantity"],
        moq: json["moq"],
        stockNum: json["stockNum"],
        salePrice: json["salePrice"],
        salePriceCurrency: json["salePriceCurrency"],
        salePriceAtOrderCurrency: json["salePriceAtOrderCurrency"],
        isLocalShipping: json["isLocalShipping"],
        shipsFrom: json["shipsFrom"],
        transportType: json["transportType"],
        internationalLpId: json["internationalLpId"],
        internationalLpCode: json["internationalLpCode"],
        internationalLpName: json["internationalLpName"],
        terminalLpId: json["terminalLpId"],
        terminalLpCode: json["terminalLpCode"],
        terminalLpName: json["terminalLpName"],
        tax: json["tax"],
        totalDiscount: json["totalDiscount"],
        discount: json["discount"],
        activityGoodsDiscount: json["activityGoodsDiscount"],
        activityFreightDiscount: json["activityFreightDiscount"],
        couponGoodsDiscount: json["couponGoodsDiscount"],
        couponFreightDiscount: json["couponFreightDiscount"],
        goodsDiscount: json["goodsDiscount"],
        freightDiscount: json["freightDiscount"],
        activityDiscount: json["activityDiscount"],
        couponDiscount: json["couponDiscount"],
        shippingAmount: json["shippingAmount"],
        goodsCollectionFreight: json["goodsCollectionFreight"],
        internationalLogisticsFreight: json["internationalLogisticsFreight"],
        terminalLogisticsFreight: json["terminalLogisticsFreight"],
        isCanCod: json["isCanCod"],
      );

  Map<String, dynamic> toJson() => {
        "saleItemId": saleItemId,
        "subItemId": subItemId,
        "afterSale": afterSale?.toJson(),
        "channelSaleUnitId": channelSaleUnitId,
        "title": title,
        "mainImage": mainImage,
        "specs": specs == null
            ? []
            : List<dynamic>.from(specs!.map((x) => x.toJson())),
        "spec": spec,
        "quantity": quantity,
        "moq": moq,
        "stockNum": stockNum,
        "salePrice": salePrice,
        "salePriceCurrency": salePriceCurrency,
        "salePriceAtOrderCurrency": salePriceAtOrderCurrency,
        "isLocalShipping": isLocalShipping,
        "shipsFrom": shipsFrom,
        "transportType": transportType,
        "internationalLpId": internationalLpId,
        "internationalLpCode": internationalLpCode,
        "internationalLpName": internationalLpName,
        "terminalLpId": terminalLpId,
        "terminalLpCode": terminalLpCode,
        "terminalLpName": terminalLpName,
        "tax": tax,
        "totalDiscount": totalDiscount,
        "discount": discount,
        "activityGoodsDiscount": activityGoodsDiscount,
        "activityFreightDiscount": activityFreightDiscount,
        "couponGoodsDiscount": couponGoodsDiscount,
        "couponFreightDiscount": couponFreightDiscount,
        "goodsDiscount": goodsDiscount,
        "freightDiscount": freightDiscount,
        "activityDiscount": activityDiscount,
        "couponDiscount": couponDiscount,
        "shippingAmount": shippingAmount,
        "goodsCollectionFreight": goodsCollectionFreight,
        "internationalLogisticsFreight": internationalLogisticsFreight,
        "terminalLogisticsFreight": terminalLogisticsFreight,
        "isCanCod": isCanCod,
      };
}

class AfterSale {
  final String? distributionAfterSaleId;
  final String? distributionAfterSaleState;

  AfterSale({
    this.distributionAfterSaleId,
    this.distributionAfterSaleState,
  });

  factory AfterSale.fromJson(Map<String, dynamic> json) => AfterSale(
        distributionAfterSaleId: json["distributionAfterSaleId"],
        distributionAfterSaleState: json["distributionAfterSaleState"],
      );

  Map<String, dynamic> toJson() => {
        "distributionAfterSaleId": distributionAfterSaleId,
        "distributionAfterSaleState": distributionAfterSaleState,
      };
}

class Spec {
  final String? specName;
  final String? specValue;
  final String? specType;

  Spec({
    this.specName,
    this.specValue,
    this.specType,
  });

  factory Spec.fromJson(Map<String, dynamic> json) => Spec(
        specName: json["specName"],
        specValue: json["specValue"],
        specType: json["specType"],
      );

  Map<String, dynamic> toJson() => {
        "specName": specName,
        "specValue": specValue,
        "specType": specType,
      };
}

class RouteInfoResult {
  final String? bizOrderNumber;
  final String? sidePerspective;
  final String? routeNode;
  final String? routeTitle;
  final String? routeDescription;
  final String? orderPackageNumber;
  final String? bizId;
  final String? bizSystem;
  final String? bizModule;
  final int? gmtOperation;
  final String? routeInfoMsg;
  final List<Detail>? details;

  RouteInfoResult({
    this.bizOrderNumber,
    this.sidePerspective,
    this.routeNode,
    this.routeTitle,
    this.routeDescription,
    this.orderPackageNumber,
    this.bizId,
    this.bizSystem,
    this.bizModule,
    this.gmtOperation,
    this.routeInfoMsg,
    this.details,
  });

  factory RouteInfoResult.fromJson(Map<String, dynamic> json) =>
      RouteInfoResult(
        bizOrderNumber: json["bizOrderNumber"],
        sidePerspective: json["sidePerspective"],
        routeNode: json["routeNode"],
        routeTitle: json["routeTitle"],
        routeDescription: json["routeDescription"],
        orderPackageNumber: json["orderPackageNumber"],
        bizId: json["bizId"],
        bizSystem: json["bizSystem"],
        bizModule: json["bizModule"],
        gmtOperation: json["gmtOperation"],
        routeInfoMsg: json["routeInfoMsg"],
        details: json["details"] == null
            ? []
            : List<Detail>.from(
                json["details"]!.map((x) => Detail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "bizOrderNumber": bizOrderNumber,
        "sidePerspective": sidePerspective,
        "routeNode": routeNode,
        "routeTitle": routeTitle,
        "routeDescription": routeDescription,
        "orderPackageNumber": orderPackageNumber,
        "bizId": bizId,
        "bizSystem": bizSystem,
        "bizModule": bizModule,
        "gmtOperation": gmtOperation,
        "routeInfoMsg": routeInfoMsg,
        "details": details == null
            ? []
            : List<dynamic>.from(details!.map((x) => x.toJson())),
      };
}

class Detail {
  final String? location;
  final String? event;
  final String? detailOperator;
  final int? gmtOperation;
  final String? remark;

  Detail({
    this.location,
    this.event,
    this.detailOperator,
    this.gmtOperation,
    this.remark,
  });

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        location: json["location"],
        event: json["event"],
        detailOperator: json["operator"],
        gmtOperation: json["gmtOperation"],
        remark: json["remark"],
      );

  Map<String, dynamic> toJson() => {
        "location": location,
        "event": event,
        "operator": detailOperator,
        "gmtOperation": gmtOperation,
        "remark": remark,
      };
}
