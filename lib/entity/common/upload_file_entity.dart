import 'package:distribution_mall_flutter/generated/json/base/json_field.dart';
import 'package:distribution_mall_flutter/generated/json/upload_file_entity.g.dart';
import 'dart:convert';
export 'package:distribution_mall_flutter/generated/json/upload_file_entity.g.dart';


@JsonSerializable()
class UploadFileBody {
	late String fileId = '';
	late String link = '';

	UploadFileBody();

	factory UploadFileBody.fromJson(Map<String, dynamic> json) => $UploadFileBodyFromJson(json);

	Map<String, dynamic> toJson() => $UploadFileBodyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}
