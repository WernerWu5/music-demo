import 'package:distribution_mall_flutter/constant/http_constant.dart';
import 'package:distribution_mall_flutter/entity/order/checkout/order_checkout_entity.dart';
import 'package:distribution_mall_flutter/entity/order/detail/order_detail_entity.dart';
import 'package:distribution_mall_flutter/entity/order/list/order_list_entity.dart';
import 'package:distribution_mall_flutter/entity/order/order.dart';
import 'package:distribution_mall_flutter/entity/order/order_route_info_entity.dart';
import 'package:distribution_mall_flutter/entity/order/order_trce_entity.dart';
import 'package:distribution_mall_flutter/entity/order/package/order_package_entity.dart';
import 'package:distribution_mall_flutter/http/init.dart';
import 'package:distribution_mall_flutter/http/response_data.dart';
import 'package:flutter/foundation.dart';

class OrderApi {
  // 查询订单列表
  static Future orderQuery(Map<String, dynamic> params,
      [bool showLoading = false]) async {
    ResponseJsonBody response = await Request(
            HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/order/v2/pageQuery')
        .post(params, showLoading: showLoading);
    if (response.status?.success != true) return;
    return OrderListEntity.fromJson(response.body);
  }

  // 取消订单
  static Future orderCancel(Map<String, dynamic> params) async {
    ResponseJsonBody response = await Request(
            HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/order/cancel')
        .post(params);
    return response.status?.success == true;
  }

  // 订单详情
  static Future orderLoad(Map<String, dynamic> params) async {
    ResponseJsonBody response = await Request(
            HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/order/v2/load')
        .get(params);
    if (response.status?.success != true) return;
    return OrderDetailEntity.fromJson(response.body);
  }

  // 订单核算页
  static Future<Result<OrderCheckoutEntity>> orderCheckout(
      Map<String, dynamic> params,
      {required bool showLoadingIndicator}) async {
    return Request(HttpConstant.getDomain.mallManagerApiGatewayUrl,
        '/distribution-mall-biz/order/v3/checkout')
        .request<OrderCheckoutEntity>(
            httpMethod: HttpMethod.post,
            params: params,
            showLoadingIndicator: showLoadingIndicator);
  }

  // 订单创建
  static Future<Result<OrderCreateEntity>> orderCreate(
      Map<String, dynamic> params) {
    return Request(HttpConstant.getDomain.mallManagerApiGatewayUrl,
        '/distribution-mall-biz/order/v3/create')
        .request<OrderCreateEntity>(
            params: params,
            showLoadingIndicator: true,
            httpMethod: HttpMethod.post);
  }
  // 获取优惠券
  static Future<Result<List<String>>> getAutoFilPromoCode() {
    return Request(HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/promotion-plan/getAutoFillPromoCode')
        .request<List<String>>(
            showLoadingIndicator: true,
            httpMethod: HttpMethod.get);
  }

  // 订单创建并使用0元支付方式支付
  static Future<Result<OrderCreateEntity>> createForFreePay(Map<String, dynamic> params)  {
    return Request(
        HttpConstant.getDomain.mallManagerApiGatewayUrl,
        '/distribution-mall-biz/order/createForFreePay')
        .request<OrderCreateEntity>(
        params: params,
        showLoadingIndicator: true,
        httpMethod: HttpMethod.post);
  }

  // 订单COD创建并支付
  static Future<Result<OrderCreateEntity>> createForCOD(Map<String, dynamic> params)  {
    return Request(
        HttpConstant.getDomain.mallManagerApiGatewayUrl,
        '/distribution-mall-biz/order/createForCOD')
        .request<OrderCreateEntity>(
        params: params,
        showLoadingIndicator: true,
        httpMethod: HttpMethod.post);
  }

  // 获取订单运输类型
  static Future<Result<List<OrderTransportEntity>>> orderTransport(Map<String, dynamic> params)  {
    return Request(
            HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/order/getOrderTransportTypeList')
        .request<List<OrderTransportEntity>>(params: params,httpMethod: HttpMethod.get);
  }

  // 删除用户侧订单
  static Future orderDelete(Map<String, dynamic> params,
      [bool showLoading = false]) async {
    ResponseJsonBody response = await Request(
            HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/order/deleteCustomerOrder')
        .post(params, showLoading: showLoading);
    return response.status?.success == true;
  }

  // 获取用户进行中订单轨迹信息(需登录)
  static Future queryInProgressOrderTrace(
      [Map<String, dynamic> params = const {}]) async {
    ResponseJsonBody response = await Request(
            HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/order/queryInProgressOrderTrace')
        .post(params);

    if (response.status?.success != true) return;
    return orderTraceEntityFromJson(response.body);
  }

  // 获取售后原因
  static Future<Result<List<SaleReasonEntity>>> getAfterSaleReason(
      [Map<String, dynamic> params = const {}]) {
    return Request(HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/aftersale/getAfterSaleReason')
        .request<List<SaleReasonEntity>>(
            params: params, httpMethod: HttpMethod.get);
  }

  // 分销订单路由轨迹查询
  static Future routeInfoQuery([Map<String, dynamic> params = const {}]) async {
    ResponseJsonBody response = await Request(
            HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/route/routeInfoQuery')
        .post(params);

    if (response.status?.success != true) return;
    return OrderRouteInfoEntity.fromJson(response.body);
  }

  // 根据订单ID获取包裹列表
  static Future queryList([Map<String, dynamic> params = const {}]) async {
    ResponseJsonBody response = await Request(
            HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/order-package/queryList')
        .post(params);

    if (response.status?.success != true) return;
    return orderPackageEntityFromJson(response.body);
  }
}
