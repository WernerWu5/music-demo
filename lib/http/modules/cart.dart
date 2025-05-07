import 'package:distribution_mall_flutter/constant/http_constant.dart';
import 'package:distribution_mall_flutter/entity/user/user.dart';
import 'package:distribution_mall_flutter/http/init.dart';
import 'package:distribution_mall_flutter/http/response_data.dart';
import 'package:flutter/foundation.dart';

class CartApi {
  // 购物车列表
  static Future<Map<String, dynamic>> cartLoad(
      Map<String, dynamic> params) async {
    return await Request(HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/shopping-cart/load')
        .post(params);
  }

  // 加入购物车
  static Future<Map<String, dynamic>> addCart(
      Map<String, dynamic> params) async {
    return await Request(HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/shopping-cart/addCart')
        .post(params);
  }

  // 取购物车商品数量
  static Future<Map<String, dynamic>> queryItemCount(
      Map<String, dynamic> params) async {
    return await Request(HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/shopping-cart/queryItemCount')
        .post(params);
  }

  // 加入购物车
  static Future<Map<String, dynamic>> batchAddCart(
      Map<String, dynamic> params) async {
    return await Request(HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/shopping-cart/batchAddCart')
        .post(params);
  }

  // 批量-更新购物车商品
  static Future<Map<String, dynamic>> batchUpdate(
      Map<String, dynamic> params) async {
    return await Request(HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/shopping-cart/batchUpdate')
        .post(params);
  }

  // 移除购物车商品
  static Future<Map<String, dynamic>> removeItem(
      Map<String, dynamic> params) async {
    return await Request(HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/shopping-cart/removeItem')
        .post(params);
  }

  // 购物车商品全选
  static Future<Map<String, dynamic>> selectAll(
      Map<String, dynamic> params) async {
    return await Request(HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/shopping-cart/selectAll')
        .post(params);
  }

  // 更新购物车商品
  static Future<Map<String, dynamic>> updateCart(
      Map<String, dynamic> params) async {
    return await Request(HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/shopping-cart/updateCart')
        .post(params);
  }
}
