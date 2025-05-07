import 'package:distribution_mall_flutter/constant/http_constant.dart';
import 'package:distribution_mall_flutter/entity/category.dart';
import 'package:distribution_mall_flutter/entity/delete_account/delete_account_captcha_token_entity.dart';
import 'package:distribution_mall_flutter/entity/delete_account/delete_account_check_entity.dart';
import 'package:distribution_mall_flutter/entity/delete_account/delete_account_send_code_entity.dart';
import 'package:distribution_mall_flutter/entity/goods/list/goods_list_entity.dart';
import 'package:distribution_mall_flutter/http/init.dart';
import 'package:distribution_mall_flutter/http/response_data.dart';
import 'package:flutter/material.dart';

class DeleteAccountApi {
  // 注销账号前置条件检查
  static Future<Result<DeleteAccountCheckBody>> check() async {
    return (await Request(HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/user/deletionCheck')
        .request<DeleteAccountCheckBody>(
            httpMethod: HttpMethod.post, showLoadingIndicator: true));
  }

  // 检查账号发送验证码
  static Future<Result<DeleteAccountSendCodeBody>> onSendSmsOTP(params) async {
    return (await Request(HttpConstant.getDomain.userCenterApiGatewayUrl,
            '/user-center/auth/confirmation-code/sendConfirmationCode')
        .request<DeleteAccountSendCodeBody>(
            httpMethod: HttpMethod.post,
            showLoadingIndicator: true,
            params: params));
  }

  static Future<Result<DeleteAccountCaptchaTokenBody>> getTemporaryToken(
      String receiver,
      String receiverType,
      String codeType,
      String code,
      String checkCode) async {
    return (await Request(HttpConstant.getDomain.userCenterApiGatewayUrl,
            '/user-center/auth/confirmation-code/generateToken')
        .request<DeleteAccountCaptchaTokenBody>(
            httpMethod: HttpMethod.post,
            showLoadingIndicator: true,
            params: {
          'receiver': receiver,
          'receiverType': receiverType,
          'codeType': codeType,
          'code': code,
          'checkCode': checkCode,
        }));
  }

// 注销账号(删除用户)
  static Future<Result<DeleteAccountCaptchaTokenBody>> deletion(
    String accountType,
    String accountName,
    String captchaToken,
  ) async {
    return (await Request(HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/user/deletion')
        .request(
            httpMethod: HttpMethod.post,
            showLoadingIndicator: true,
            params: {
          'credential': {
            'account': accountName,
            'type': accountType,
            'proveTicket': captchaToken,
          },
        }));
  }
}
