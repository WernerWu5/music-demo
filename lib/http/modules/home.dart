import 'package:distribution_mall_flutter/constant/http_constant.dart';
import 'package:distribution_mall_flutter/http/init.dart';
import 'package:distribution_mall_flutter/http/response_data.dart';

class HomeApi {
  // banner列表
  static Future banner(Map<String, dynamic> params) async {
    return await Request(HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/banner/bannerInfo')
        .get(params);
  }
}
