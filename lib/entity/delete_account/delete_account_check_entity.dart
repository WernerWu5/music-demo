import 'package:distribution_mall_flutter/generated/json/base/json_field.dart';
import 'package:distribution_mall_flutter/generated/json/delete_account_check_entity.g.dart';
import 'dart:convert';
export 'package:distribution_mall_flutter/generated/json/delete_account_check_entity.g.dart';

@JsonSerializable()
class DeleteAccountCheckEntity {
	DeleteAccountCheckBody? body;
	DeleteAccountCheckStatus? status;

	DeleteAccountCheckEntity();

	factory DeleteAccountCheckEntity.fromJson(Map<String, dynamic> json) => $DeleteAccountCheckEntityFromJson(json);

	Map<String, dynamic> toJson() => $DeleteAccountCheckEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DeleteAccountCheckBody {
	late List<DeleteAccountCheckBodyChecklist> checklist;
	late bool pass;
	late DeleteAccountCheckBodyPrimaryAccount primaryAccount;

	DeleteAccountCheckBody();

	factory DeleteAccountCheckBody.fromJson(Map<String, dynamic> json) => $DeleteAccountCheckBodyFromJson(json);

	Map<String, dynamic> toJson() => $DeleteAccountCheckBodyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DeleteAccountCheckBodyChecklist {
	late String item;
	late bool pass;

	DeleteAccountCheckBodyChecklist();

	factory DeleteAccountCheckBodyChecklist.fromJson(Map<String, dynamic> json) => $DeleteAccountCheckBodyChecklistFromJson(json);

	Map<String, dynamic> toJson() => $DeleteAccountCheckBodyChecklistToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DeleteAccountCheckBodyPrimaryAccount {
	late String accountName;
	late String accountType;

	DeleteAccountCheckBodyPrimaryAccount();

	factory DeleteAccountCheckBodyPrimaryAccount.fromJson(Map<String, dynamic> json) => $DeleteAccountCheckBodyPrimaryAccountFromJson(json);

	Map<String, dynamic> toJson() => $DeleteAccountCheckBodyPrimaryAccountToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class DeleteAccountCheckStatus {
	String? domainCode;
	dynamic message;
	dynamic path;
	String? returnCode;
	bool? success;

	DeleteAccountCheckStatus();

	factory DeleteAccountCheckStatus.fromJson(Map<String, dynamic> json) => $DeleteAccountCheckStatusFromJson(json);

	Map<String, dynamic> toJson() => $DeleteAccountCheckStatusToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}