// To parse this JSON data, do
//
//     final bannerInfo = bannerInfoFromJson(jsonString);

import 'dart:convert';

List<BannerInfo> bannerInfoFromJson(List arr) =>
    List<BannerInfo>.from(arr.map((x) => BannerInfo.fromJson(x)));

String bannerInfoToJson(List<BannerInfo> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BannerInfo {
  final String? bannerId;
  final String? bannerPicUrl;
  final int? sequence;
  final String? type;
  final String? activePage;

  BannerInfo({
    this.bannerId,
    this.bannerPicUrl,
    this.sequence,
    this.type,
    this.activePage,
  });

  factory BannerInfo.fromJson(Map<String, dynamic> json) {
    return BannerInfo(
      bannerId: json["bannerId"],
      bannerPicUrl: json["bannerPicUrl"],
      sequence: json["sequence"],
      type: json["type"],
      activePage: json["activePage"],
    );
  }

  Map<String, dynamic> toJson() => {
        "bannerId": bannerId,
        "bannerPicUrl": bannerPicUrl,
        "sequence": sequence,
        "type": type,
        "activePage": activePage,
      };
}
