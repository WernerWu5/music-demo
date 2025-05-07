// To parse this JSON data, do
//
//     final category = categoryFromJson(jsonString);

import 'dart:convert';

List<Category> categoryFromJson(List list) =>
    List<Category>.from(list.map((x) => Category.fromJson(x)));

String categoryToJson(List<Category> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Category {
  final String? categoryId;
  final String? parentId;
  final String? name;
  final String? categoryName;
  final int? level;
  final int? categoryLevel;
  final String? logo;
  final bool? leaf;
  final int? sequence;

  Category({
    this.categoryId,
    this.parentId,
    this.name,
    this.categoryName,
    this.level,
    this.categoryLevel,
    this.logo,
    this.leaf,
    this.sequence,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        categoryId: json["categoryId"],
        parentId: json["parentId"],
        name: json["name"],
        categoryName: json["categoryName"],
        level: json["level"],
        categoryLevel: json["categoryLevel"],
        logo: json["logo"],
        leaf: json["leaf"],
        sequence: json["sequence"],
      );

  Map<String, dynamic> toJson() => {
        "categoryId": categoryId,
        "parentId": parentId,
        "name": name,
        "categoryName": categoryName,
        "level": level,
        "categoryLevel": categoryLevel,
        "logo": logo,
        "leaf": leaf,
        "sequence": sequence,
      };
}
