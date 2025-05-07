import 'package:distribution_mall_flutter/generated/json/base/json_field.dart';
import 'package:distribution_mall_flutter/generated/json/delete_account_send_code_entity.g.dart';
import 'dart:convert';
export 'package:distribution_mall_flutter/generated/json/delete_account_send_code_entity.g.dart';

@JsonSerializable()
class DeleteAccountSendCodeBody {
	String checkCode = '';
	int codeLength = 0;
	String? codeType = '';
	int? sendCoolDownSecond = 0;

	DeleteAccountSendCodeBody();

	factory DeleteAccountSendCodeBody.fromJson(Map<String, dynamic> json) => $DeleteAccountSendCodeBodyFromJson(json);

	Map<String, dynamic> toJson() => $DeleteAccountSendCodeBodyToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}
