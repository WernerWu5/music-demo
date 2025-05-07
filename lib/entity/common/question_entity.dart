// To parse this JSON data, do
//
//     final questionEntity = questionEntityFromJson(jsonString);

import 'dart:convert';

QuestionEntity questionEntityFromJson(String str) =>
    QuestionEntity.fromJson(json.decode(str));

String questionEntityToJson(QuestionEntity data) => json.encode(data.toJson());

class QuestionEntity {
  final String? title;
  final List<PathVo>? pathVos;
  final int? views;
  final String? content;
  final List<dynamic>? tagList;
  final String? block;
  final String? digest;
  final String? titleImage;
  final int? sameLevelSequence;

  QuestionEntity({
    this.title,
    this.pathVos,
    this.views,
    this.content,
    this.tagList,
    this.block,
    this.digest,
    this.titleImage,
    this.sameLevelSequence,
  });

  factory QuestionEntity.fromJson(Map<String, dynamic> json) => QuestionEntity(
        title: json["title"],
        pathVos: json["pathVOS"] == null
            ? []
            : List<PathVo>.from(
                json["pathVOS"]!.map((x) => PathVo.fromJson(x))),
        views: json["views"],
        content: json["content"],
        tagList: json["tagList"] == null
            ? []
            : List<dynamic>.from(json["tagList"]!.map((x) => x)),
        block: json["block"],
        digest: json["digest"],
        titleImage: json["titleImage"],
        sameLevelSequence: json["sameLevelSequence"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "pathVOS": pathVos == null
            ? []
            : List<dynamic>.from(pathVos!.map((x) => x.toJson())),
        "views": views,
        "content": content,
        "tagList":
            tagList == null ? [] : List<dynamic>.from(tagList!.map((x) => x)),
        "block": block,
        "digest": digest,
        "titleImage": titleImage,
        "sameLevelSequence": sameLevelSequence,
      };
}

class PathVo {
  final String? categoryId;
  final String? name;

  PathVo({
    this.categoryId,
    this.name,
  });

  factory PathVo.fromJson(Map<String, dynamic> json) => PathVo(
        categoryId: json["categoryId"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "categoryId": categoryId,
        "name": name,
      };
}
