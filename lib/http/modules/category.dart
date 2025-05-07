import 'package:distribution_mall_flutter/constant/http_constant.dart';
import 'package:distribution_mall_flutter/entity/category.dart';
import 'package:distribution_mall_flutter/entity/goods/list/goods_list_entity.dart';
import 'package:distribution_mall_flutter/http/init.dart';
import 'package:distribution_mall_flutter/http/response_data.dart';
import 'package:flutter/material.dart';

class CategoryApi {
  // 【非登录态】-分类查询
  static Future querySubCategory(Map<String, dynamic> params) async {
    ResponseJsonBody response = await Request(
            HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/category/h5/querySubCategory')
        .get(params);
    if (response.status!.success != true) {
      return [];
    }
    return categoryFromJson(response.body ?? []);
  }
}
