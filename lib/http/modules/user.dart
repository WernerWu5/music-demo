import 'package:distribution_mall_flutter/constant/http_constant.dart';
import 'package:distribution_mall_flutter/entity/user/user.dart';
import 'package:distribution_mall_flutter/entity/user/user_distributor_info_entity.dart';
import 'package:distribution_mall_flutter/entity/user/user_info_entity.dart';
import 'package:distribution_mall_flutter/http/init.dart';
import 'package:distribution_mall_flutter/http/response_data.dart';
import 'package:flutter/foundation.dart';

class UserApi {
  static Future loginAccount(Map<String, dynamic> params) async {
    Map<String, dynamic> json = await Request(
            HttpConstant.getDomain.userCenterApiGatewayUrl,
            '/user-center/auth/auth-biz/passwordLogin')
        .post(params);
    return ResponseData<UserPasswordLogin>.fromJson(
            json, UserPasswordLogin.fromJson)
        .body;
  }

  static Future<bool> loginThirdParty(Map<String, dynamic> params) async {
    ResponseJsonBody response = await Request(
            HttpConstant.getDomain.userCenterApiGatewayUrl,
            '/distribution-mall-biz/user/tp-auth/appCallbackLogin')
        .post(params);
    return response.status?.success == true;
  }

  static Future queryAuthorizedTenants(Map<String, dynamic> params) async {
    return await Request(HttpConstant.getDomain.userCenterApiGatewayUrl,
            '/user-center/auth/auth-biz/queryAuthorizedTenants')
        .get(params);
  }

  static Future loginTenant(Map<String, dynamic> params) async {
    ResponseJsonBody json = await Request(
            HttpConstant.getDomain.userCenterApiGatewayUrl,
            '/user-center/auth/auth-biz/loginTenant')
        .post(params);
  }

  static Future loginEndpoint(Map<String, dynamic> params) async {
    ResponseJsonBody json = await Request(
            HttpConstant.getDomain.userCenterApiGatewayUrl,
            '/user-center/auth/auth-biz/loginEndpoint')
        .post(params);
  }

  static Future<bool> loginTenantAndEndPoint() async {
    try {
      ResponseJsonBody response = await queryAuthorizedTenants(
          {'endpoint': HttpConstant.getDomain.currTerminal});
      if ((response.body as List?)?.isNotEmpty == true) {
        var currentTenant = response.body?.last;
        if (currentTenant?['tenantId'] != null) {
          await loginTenant({'tenantId': currentTenant['tenantId']});
          await loginEndpoint(
              {'endpoint': HttpConstant.getDomain.currTerminal});
          return true;
        }
      }

      return false;
    } catch (e) {
      return false;
    }
  }

  // 动态发送验证码
  static Future dynamicSendConfirmationCode(Map<String, dynamic> params) async {
    ResponseJsonBody response = await Request(
            HttpConstant.getDomain.userCenterApiGatewayUrl,
            '/user-center/auth/confirmation-code/dynamicSendConfirmationCode')
        .post(params);
    if (response.status?.success != true) return;
    return AutoCodeEntity.fromJson(response.body);
  }

  // 通过验证码获取临时token
  static Future generateToken(Map<String, dynamic> params) async {
    ResponseJsonBody response = await Request(
            HttpConstant.getDomain.userCenterApiGatewayUrl,
            '/user-center/auth/confirmation-code/generateToken')
        .post(params);
    if (response.status?.success != true) return;
    return GenerateTokenEntity.fromJson(response.body);
  }

  // 获取当前登录分销商信息
  static Future<Result<UserDistributorInfoBody>> distributorInfo() async {
    return await Request(
            HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/distributor/info').request<UserDistributorInfoBody>(httpMethod: HttpMethod.get);
  }

  // 绑定商户邀请码
  static Future<Result<bool>> bindInvitationCode({required String parentCode}) async {
    return await Request(
            HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/invitation-code/bindInvitationCode').request<bool>(httpMethod: HttpMethod.post,params: {
              'parentCode':parentCode,
    },showLoadingIndicator: true);
  }

  // 注册登录流程
  static Future loginOrCreateAccount(Map<String, dynamic> params) async {
    ResponseJsonBody response = await Request(
            HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/user/loginOrCreateAccount')
        .post(params);
    return response.status?.success == true;
  }

  // 获取登录用户信息
  static Future userInfo(Map<String, dynamic> params) async {
    ResponseJsonBody response = await Request(
            HttpConstant.getDomain.mallManagerApiGatewayUrl,
            '/distribution-mall-biz/user/info')
        .get(params);
    if (response.status?.success != true) return;
    return UserInfoEntity.fromJson(response.body);
  }

  // 获取登录用户信息
  static Future getDisplay(Map<String, dynamic> params) async {
    ResponseJsonBody response = await Request(
            HttpConstant.getDomain.userCenterApiGatewayUrl,
            '/user-center/user/user-biz/getDisplay')
        .get(params);
    if (response.status?.success != true) return;
    return UserDisplayEntity.fromJson(response.body);
  }
}
