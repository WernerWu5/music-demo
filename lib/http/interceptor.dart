// ignore_for_file: avoid_print

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/constant/http_constant.dart';
import 'package:distribution_mall_flutter/http/response_data.dart';
import 'package:distribution_mall_flutter/utils/common_third.dart';
import 'package:distribution_mall_flutter/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/storage.dart';

class ApiInterceptor extends Interceptor {
  Map<String, dynamic>? otherOptions;
  Map<String, dynamic>? extra;

  ApiInterceptor({this.otherOptions});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    extra = options.extra;
    options.headers = handleHeader(options.extra['requestPath'],
        contentType: otherOptions?['contentType'],
        accept: otherOptions?['accept']);
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    try {
      ResponseJsonBody data = ResponseJsonBody.fromJson(response.data);
      List<String> expiredAuthCodes = ['109', '107', '105', '1001'];
      if (expiredAuthCodes.contains(data.status?.returnCode)) {
        EPToast.showToast(data.status!.message!);
        return super.onResponse(response, handler);
      }
      if (data.body != null &&
          data.body is Map<String, dynamic> &&
          data.body?['token'] != null) {
        String token = data.body?['token'];
        String signSecret = data.body?['signSecret'];
        if (token.isNotEmpty && signSecret.isNotEmpty) {
          EPstorage.secret.put(SecretBoxKey.token, token);
          EPstorage.secret.put(SecretBoxKey.signSecret, signSecret);
        }
      }
      if (data.status?.success != true &&
          data.status?.message?.isNotEmpty == true &&
          extra?['hideMessage'] == null) {
        if (data.status!.message! == '并发异常') {
          EPToast.showToast('Concurrency Exception');
        } else if (data.status!.message! == '服务器异常') {
          EPToast.showToast('Server Exception');
        } else {
          EPToast.showToast(data.status!.message!);
        }
      }
    } catch (err) {
      debugPrint('ApiInterceptor-onResponse===============: $err');
    }

    // handler.next(response);
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // 处理网络请求错误
    // handler.next(err);
    String url = err.requestOptions.uri.toString();
    if (!url.contains('heartBeat')) {
      // SmartDialog.showToast(
      //   await dioError(err),
      //   displayType: SmartToastType.onlyRefresh,
      // );
    }
    super.onError(err, handler);
  }

  static Future<String> dioError(DioException error) async {
    switch (error.type) {
      case DioExceptionType.badCertificate:
        return 'Wrong Certificate!';
      case DioExceptionType.badResponse:
        return 'Server Exception';
      case DioExceptionType.cancel:
        return 'The request has been cancelled';
      case DioExceptionType.connectionError:
        return 'Connection Error';
      case DioExceptionType.connectionTimeout:
        return 'Network connection timeout';
      case DioExceptionType.receiveTimeout:
        return 'Super Speed';
      case DioExceptionType.sendTimeout:
        return 'Send request timeout';
      case DioExceptionType.unknown:
        final String res = await checkConnect();
        return '$res';
    }
  }

  static Future<String> checkConnect() async {
    final List<ConnectivityResult> connectivityResult =
        await Connectivity().checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.mobile)) {
      return 'Mobile traffic is being used';
    } else if (connectivityResult.contains(ConnectivityResult.wifi)) {
      return 'wifi is being used';
    } else if (connectivityResult.contains(ConnectivityResult.ethernet)) {
      return 'LAN in use';
    } else if (connectivityResult.contains(ConnectivityResult.vpn)) {
      return 'A proxy network is being used';
    } else if (connectivityResult.contains(ConnectivityResult.bluetooth)) {
      return 'Using Bluetooth network';
    } else if (connectivityResult.contains(ConnectivityResult.other)) {
      return 'Another network is being used';
    } else if (connectivityResult.contains(ConnectivityResult.none)) {
      return 'Not connected to any network';
    } else {
      return '';
    }
  }

  static Map<String, dynamic> handleHeader(String? requestPath,
      {String? contentType, String? accept}) {
    String validRequestTimestamp =
        DateTime.now().millisecondsSinceEpoch.toString();
    String validRequestRandom = Utils.getRandomString(8);
    String language = 'en_US';
    String signSecret = EPstorage.secret.get(SecretBoxKey.signSecret) ?? '';
    String validRequestSignature = Utils.mallSign(
        requestPath, validRequestTimestamp, validRequestRandom, signSecret);

    Map<String, dynamic> headers = {
      'Content-Type': contentType ?? 'application/json',
      'Accept': accept ?? 'application/json',
      'valid-request-signature': validRequestSignature,
      'valid-request-timestamp': validRequestTimestamp,
      'valid-request-random': validRequestRandom,
      'newnary-u-language': language,
      'newnary-u-currency': 'PHP',
      'newnary-u-site': 'PH',
      'newnary-s-referer-site-by': HttpConstant.getDomain.mallUrl,
      'Authorization': EPstorage.secret.get(SecretBoxKey.token) ?? ''
    };

    return headers;
  }
}
