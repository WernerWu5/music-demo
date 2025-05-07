import 'package:distribution_mall_flutter/constant/http_constant.dart';
import 'package:distribution_mall_flutter/entity/category.dart';
import 'package:distribution_mall_flutter/entity/goods/list/goods_list_entity.dart';
import 'package:distribution_mall_flutter/entity/pay/list/pay_list_entity.dart';
import 'package:distribution_mall_flutter/entity/pay/pay.dart';
import 'package:distribution_mall_flutter/http/init.dart';
import 'package:distribution_mall_flutter/http/response_data.dart';
import 'package:distribution_mall_flutter/utils/debug.dart';
import 'package:flutter/material.dart';

class PayApi {
  // 通过订单信息获取支付方式列表
  static Future<Result<PayListEntity>> getPaymentMethodsByOrderInfo(
      Map<String, dynamic> params) async {
    return Request(
            HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/payment/getPaymentMethodsByOrderInfo')
        .request<PayListEntity>(params: params,httpMethod: HttpMethod.post,showLoadingIndicator: false);
  }

  // 发起支付请求-公共
  static Future<Result<OrderPaymentEntity>> orderPayment(Map<String, dynamic> params) async {
    return await Request(
            HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/payment/orderPayment')
        .request<OrderPaymentEntity>(params: params,httpMethod: HttpMethod.post);
  }

  // 根据支付单ID查询支付结果
  static Future queryPaymentState(Map<String, dynamic> params) async {
    ResponseJsonBody response = await Request(
            HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/payment/queryPaymentState')
        .get(params);
    if (response.status!.success != true) {
      return;
    }
    return PaymentStateEntity.fromJson(response.body);
  }
}
