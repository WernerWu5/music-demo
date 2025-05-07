import 'package:distribution_mall_flutter/constant/http_constant.dart';
import 'package:distribution_mall_flutter/entity/goods/detail/goods_detail_entity.dart';
import 'package:distribution_mall_flutter/entity/goods/goods.dart';
import 'package:distribution_mall_flutter/entity/goods/list/goods_list_entity.dart';
import 'package:distribution_mall_flutter/http/init.dart';
import 'package:distribution_mall_flutter/http/response_data.dart';
import 'package:flutter/foundation.dart';

class GoodsApi {
  // 商品详情渲染
  static Future<Result<GoodsDetailEntity>> goodsRender(Map<String, dynamic> params)  {
    return Request(
            HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/product/detail/renderV2')
        .request<GoodsDetailEntity>(params: params,httpMethod: HttpMethod.post);
  }

  // 商品搜索接口
  static Future<Result<GoodsListEntity>> goodsSuSearch({required String tag,required int pageNum,required int pageSize}) {
    return Request(HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/product/search/suSearchV2')
        .request<GoodsListEntity>(params: {
      'tag': tag,
      'pageCondition': {
        'pageNum': pageNum,
        'pageSize': pageSize,
      }
    }, httpMethod: HttpMethod.post);
  }

  // 商品详情计算所选商品价格
  static Future calculateChoiceItemPrice(Map<String, dynamic> params) async {
    ResponseJsonBody response = await Request(
            HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/product/detail/calculateChoiceItemPriceV2')
        .post(params);
    if (response.status?.success != true) {
      return;
    }
    return CalculateEntity.fromJson(response.body);
  }
}
