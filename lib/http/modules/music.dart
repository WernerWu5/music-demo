import 'package:distribution_mall_flutter/constant/http_constant.dart';
import 'package:distribution_mall_flutter/http/init.dart';
import 'package:distribution_mall_flutter/http/response_data.dart';

// https://itunes.apple.com/search?
// term=Talyor+Swift&limit=200&media=music
class MusicApi {
  // banner列表
  static Future getMusicList(Map<String, dynamic> params) async {
    return await Request('https://itunes.apple.com', '/search').get(params);
  }
}
