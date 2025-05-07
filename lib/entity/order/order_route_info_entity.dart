// To parse this JSON data, do
//
//     final orderRouteInfoEntity = orderRouteInfoEntityFromJson(jsonString);

import 'dart:convert';

OrderRouteInfoEntity orderRouteInfoEntityFromJson(String str) =>
    OrderRouteInfoEntity.fromJson(json.decode(str));

String orderRouteInfoEntityToJson(OrderRouteInfoEntity data) =>
    json.encode(data.toJson());

class OrderRouteInfoEntity {
  List<RouteInfoResult>? routeInfoResult;

  OrderRouteInfoEntity({
    this.routeInfoResult,
  });

  factory OrderRouteInfoEntity.fromJson(Map<String, dynamic> json) =>
      OrderRouteInfoEntity(
        routeInfoResult: json["routeInfoResult"] == null
            ? []
            : List<RouteInfoResult>.from(json["routeInfoResult"]!
                .map((x) => RouteInfoResult.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "routeInfoResult": routeInfoResult == null
            ? []
            : List<dynamic>.from(routeInfoResult!.map((x) => x.toJson())),
      };
}

class RouteInfoResult {
  String? bizOrderNumber;
  String? sidePerspective;
  String? routeNode;
  String? routeTitle;
  String? routeDescription;
  String? orderPackageNumber;
  String? bizId;
  String? bizSystem;
  String? bizModule;
  int? gmtOperation;
  String? routeInfoMsg;
  List<Detail>? details;

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
  String? location;
  String? event;
  String? detailOperator;
  int? gmtOperation;
  String? remark;

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
