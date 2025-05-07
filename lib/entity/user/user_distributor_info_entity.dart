import 'package:distribution_mall_flutter/generated/json/base/json_field.dart';
import 'package:distribution_mall_flutter/generated/json/user_distributor_info_entity.g.dart';
import 'dart:convert';
export 'package:distribution_mall_flutter/generated/json/user_distributor_info_entity.g.dart';

@JsonSerializable()
class UserDistributorInfoBody {
	String? name;
	String? address;
	List<dynamic>? qualifications;
	String? status;
	String? merchantType;
	UserDistributorInfoBodyLevel? level;
	bool? hasCertified;
	String? parentInvitationCode;

	UserDistributorInfoBody();

	factory UserDistributorInfoBody.fromJson(Map<String, dynamic> json) => $UserDistributorInfoBodyFromJson(json);

	Map<String, dynamic> toJson() => $UserDistributorInfoBodyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserDistributorInfoBodyLevel {
	String? levelName;

	UserDistributorInfoBodyLevel();

	factory UserDistributorInfoBodyLevel.fromJson(Map<String, dynamic> json) => $UserDistributorInfoBodyLevelFromJson(json);

	Map<String, dynamic> toJson() => $UserDistributorInfoBodyLevelToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}