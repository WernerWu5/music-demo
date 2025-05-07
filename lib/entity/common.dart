// To parse this JSON data, do
//
//     final cmsInfo = cmsInfoFromJson(jsonString);

import 'dart:convert';

CmsInfo cmsInfoFromJson(String str) => CmsInfo.fromJson(json.decode(str));

String cmsInfoToJson(CmsInfo data) => json.encode(data.toJson());

class CmsInfo {
  final String? pageTitle;
  final String? distributionCmsId;
  final String? cmsState;
  final int? gmtEffectiveStart;
  final int? gmtEffectiveEnd;
  final int? gmtCreate;
  final int? gmtModified;
  final String? pageContent;
  final String? remark;

  CmsInfo({
    this.pageTitle,
    this.distributionCmsId,
    this.cmsState,
    this.gmtEffectiveStart,
    this.gmtEffectiveEnd,
    this.gmtCreate,
    this.gmtModified,
    this.pageContent,
    this.remark,
  });

  factory CmsInfo.fromJson(Map<String, dynamic> json) => CmsInfo(
        pageTitle: json["pageTitle"],
        distributionCmsId: json["distributionCmsId"],
        cmsState: json["cmsState"],
        gmtEffectiveStart: json["gmtEffectiveStart"],
        gmtEffectiveEnd: json["gmtEffectiveEnd"],
        gmtCreate: json["gmtCreate"],
        gmtModified: json["gmtModified"],
        pageContent: json["pageContent"],
        remark: json["remark"],
      );

  Map<String, dynamic> toJson() => {
        "pageTitle": pageTitle,
        "distributionCmsId": distributionCmsId,
        "cmsState": cmsState,
        "gmtEffectiveStart": gmtEffectiveStart,
        "gmtEffectiveEnd": gmtEffectiveEnd,
        "gmtCreate": gmtCreate,
        "gmtModified": gmtModified,
        "pageContent": pageContent,
        "remark": remark,
      };
}
