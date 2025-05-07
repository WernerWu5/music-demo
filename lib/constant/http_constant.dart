import 'package:flutter/foundation.dart';

class Domain {
  late String mallUrl;
  late String mallH5Url;
  late String userCenterApiGatewayUrl;
  late String mallManagerApiGatewayUrl;
  late String commonApiGatewayUrl;
  late String staticSecretKey;
  late String currTerminal = 'DISTRIBUTION_MALL';
  late String tenantId;
  // h5唤起app url scheme
  late String epAppSchemeUrl = 'elephantpal://com.elephantpal';
  // h5下载页网址
  late String marketDownUrl = 'http://market.gsp-dc-mall-fat.newnary.cn';
  // // 1688详情链接
  late String goodDetail1688 = 'https://detail.1688.com/offer/';
  // 物流查询
  late String trackingUrl = 'https://www.ninjavan.co/en-my/tracking';

  static Domain? _instance;
  Domain._();

  factory Domain({
    required mallUrl,
    required mallH5Url,
    required userCenterApiGatewayUrl,
    required mallManagerApiGatewayUrl,
    required commonApiGatewayUrl,
    required staticSecretKey,
    required tenantId,
  }) {
    _instance ??= Domain._();
    _instance!.mallUrl = mallUrl;
    _instance!.mallH5Url = mallH5Url;
    _instance!.userCenterApiGatewayUrl = userCenterApiGatewayUrl;
    _instance!.mallManagerApiGatewayUrl = mallManagerApiGatewayUrl;
    _instance!.commonApiGatewayUrl = commonApiGatewayUrl;
    _instance!.staticSecretKey = staticSecretKey;
    _instance!.tenantId = tenantId;
    return _instance!;
  }
}

class HttpConstant {
  // 从构建标志获取环境变量
  static const bool isFat =
      String.fromEnvironment('env', defaultValue: 'fat') == 'fat';
  // 客服连接
  static const String service =
      'https://m.elephantpal.com/activity/#/pages/activity/service/service';
  static Domain get getDomain {
    if (isFat) {
      return Domain(
        mallUrl: 'http://gsp-dc-mall-fat.newnary.cn',
        mallH5Url: 'http://m.gsp-dc-mall-fat.newnary.cn/',
        userCenterApiGatewayUrl: 'https://api-gsp-uc-fat.newnary.cn',
        mallManagerApiGatewayUrl: 'https://api-gsp-dc-fat.newnary.cn',
        commonApiGatewayUrl: 'https://api-gsp-common-fat.newnary.cn',
        staticSecretKey: 'IdZGQTOZ4Zh8H64uXKkFL6KMp6tawm0I',
        tenantId: 'TENANT3924117688555169382400',
      );
    }
    return Domain(
      mallUrl: 'https://www.elephantpal.com',
      mallH5Url: 'https://m.elephantpal.com/',
      userCenterApiGatewayUrl: 'https://api-uc.elephantpal.com',
      mallManagerApiGatewayUrl: 'https://api-dc.elephantpal.com',
      commonApiGatewayUrl: 'https://api-common.elephantpal.com',
      staticSecretKey: '42yd4TiFUNgqndLzt2CvDM13Qsu0qZ',
      tenantId: 'TENANT7941185388049557880832',
    );
  }

  static const List<int> validateStatusCodes = [
    302,
    304,
    307,
    400,
    401,
    403,
    404,
    405,
    409,
    412,
    500,
    503,
    504,
    509,
    616,
    617,
    625,
    626,
    628,
    629,
    632,
    643,
    650,
    652,
    658,
    662,
    688,
    689,
    701,
    799,
    8888
  ];
}
