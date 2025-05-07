import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/constant/http_constant.dart';
import 'package:distribution_mall_flutter/ext/toast_ext.dart';
import 'package:distribution_mall_flutter/generated/json/base/json_convert_content.dart';
import 'package:distribution_mall_flutter/http/net_exception.dart';
import 'package:distribution_mall_flutter/http/response_data.dart';
import 'package:distribution_mall_flutter/utils/debug.dart';
import 'package:distribution_mall_flutter/utils/navigator_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'interceptor.dart';
import 'dart:developer';

enum HttpMethod {
  get,
  post,
  delete,
}

ContentType formContentType =
    ContentType.parse('application/x-www-form-urlencoded');

class Request {
  static late final Dio dio;
  String? baseUrl;
  static Request? _instance;

  factory Request(baseUrl, path, [extra = const {}]) {
    _instance ??= Request._();
    // _instance!.baseUrl = baseUrl;
    dio.options.baseUrl = baseUrl;
    dio.options.extra['requestPath'] = path;
    dio.options.extra = {...(dio.options.extra), ...extra};
    return _instance!;
  }

  /*
   * config it and create
   */
  Request._() {
    //BaseOptions、Options、RequestOptions 都可以配置参数，优先级别依次递增，且可以根据优先级别覆盖参数
    BaseOptions options = BaseOptions(
      // baseUrl: HttpConstant.getDomain.userCenterApiGatewayUrl,
      //请求基地址,可以包含子路径
      //连接服务器超时时间，单位是毫秒.
      connectTimeout: const Duration(milliseconds: 12000),
      //响应流上前后两次接受到数据的间隔，单位为毫秒。
      receiveTimeout: const Duration(milliseconds: 12000),
      //Http请求头.
      // headers: {},
    );

    dio = Dio(options);

    //添加拦截器
    dio.interceptors.add(ApiInterceptor());

    // 日志拦截器 输出请求、响应内容
    dio.interceptors.add(LogInterceptor(
        request: true,
        requestHeader: DebugConstant.isOpenRequestLog(),
        requestBody: DebugConstant.isOpenRequestLog(),
        responseHeader: DebugConstant.isOpenRequestLog(),
        responseBody: DebugConstant.isOpenRequestLog(),
        logPrint: (logObj) => log(logObj.toString())));

    dio.transformer = BackgroundTransformer();
    dio.options.validateStatus = (int? status) {
      return status! >= 200 && status < 300 ||
          HttpConstant.validateStatusCodes.contains(status);
    };
  }

  /*
   * get请求
   */
  get<T>(data, {options, cancelToken, extra, showLoading = false}) async {
    Response response;
    final Options options = Options();
    // ResponseType resType = ResponseType.json;
    // if (extra != null) {
    //   resType = extra!['resType'] ?? ResponseType.json;
    //   if (extra['ua'] != null) {
    //     options.headers = {'user-agent': headerUa(type: extra['ua'])};
    //   }
    // }
    // options.responseType = resType;
    if (showLoading) {
      NavigatorUtils.showLoadingDialog(true);
    }
    try {
      if (DebugConstant.isOpenRequestLog()) {
        log('get data $data');
      }
      response = await dio.get(
        dio.options.extra['requestPath'],
        queryParameters: data,
        options: options,
        cancelToken: cancelToken,
      );
      if (DebugConstant.isOpenRequestLog()) {
        log('response data ${response.data}');
      }
      return ResponseJsonBody.fromJson(jsonDecode(response.toString()));
    } on DioException catch (e) {
      Response errResponse = Response(
        data: {
          'message': await ApiInterceptor.dioError(e)
        }, // 将自定义 Map 数据赋值给 Response 的 data 属性
        statusCode: 200,
        requestOptions: RequestOptions(),
      );
      return errResponse;
    } finally {
      if (showLoading) {
        NavigatorUtils.showLoadingDialog(false);
      }
    }
  }

  /*
   * getT请求
   */
  Future<Result<T>> request<T>({
    // required String requestPath,
    required HttpMethod httpMethod,
    List<UploadFileInfo>? multipartFile,
    bool showLoadingIndicator = false,
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
    bool ignoreToast = false,
  }) async {
    // println('data ${params}');
    if (showLoadingIndicator) {
      NavigatorUtils.showLoadingDialog(true);
    }
    try {
      T? result = await _request<T>(
        // requestPath,
        multipartFile: multipartFile,
        httpMethod: httpMethod,
        params: params ?? {},
        cancelToken: cancelToken,
      );

      return Future<Result<T>>.value(Result<T>.iniSuccess(result));
    } catch (exception, stackTrace) {
      //把异步错误也try catch住
      if (exception is NetException) {
        // if (!ignoreToast &&
        //     !ErrorCode.ignoreToastCode.contains(exception.code)) {
        //   ('${exception.message}').toast();
        // }
        return Future<Result<T>>.value(Result.iniFail(exception));
      } else if (exception is TimeoutException) {
        // ('timeout').toast();
        return Future<Result<T>>.value(Result.iniFail(NetException(
            code: ErrorCode.NormalError.toString(),
            message: "timeout .${exception.toString()}")));
      } else if (exception is NetException) {
        // if (!ignoreToast &&
        //     !ErrorCode.ignoreToastCode.contains(exception.code)) {
        //   ('${exception.message}').toast();
        // }
        return Future<Result<T>>.value(Result.iniFail(exception));
      } else {
        // if (!ignoreToast) {
        //   ('未知错误$exception').toast();
        // }
      }
      debugPrint("错误 $exception $stackTrace");
      return Future<Result<T>>.value(Result.iniFail(NetException(
          code: ErrorCode.NormalError.toString(),
          message: "error,${exception.toString()}.${stackTrace.toString()}")));
    } finally {
      if (showLoadingIndicator) {
        NavigatorUtils.showLoadingDialog(false);
      }
    }
  }

  /*
   * getT请求
   */
  Future<T?> _request<T>( // String requestPath,
      {
    required HttpMethod httpMethod,
    List<UploadFileInfo>? multipartFile,
    required Map<String, dynamic> params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final Options options = Options(
        contentType: (multipartFile?.isNotEmpty == true
                ? formContentType
                : ContentType.json)
            .toString());
    String requestPath = dio.options.extra['requestPath'];
    try {
      Response response;
      if (httpMethod == HttpMethod.get) {
        response = await dio.get(
          requestPath,
          queryParameters: params,
          cancelToken: cancelToken,
          options: options,
        );
      } else if (httpMethod == HttpMethod.delete) {
        response = await dio.delete(
          requestPath,
          queryParameters: params,
          cancelToken: cancelToken,
          options: options,
        );
      } else if (httpMethod == HttpMethod.post) {
        if (multipartFile?.isNotEmpty == true) {
          ///如果只有一个文件,并且,没有name
          if (multipartFile!.length == 1 && multipartFile.first.name == null) {
            response = await dio.post(
              requestPath,
              data: multipartFile.first.file.finalize(),
              cancelToken: cancelToken,
              options: options,
            );
          } else {
            await for (var itemUpload in Stream.fromIterable(multipartFile!)) {
              params[itemUpload.name!] = itemUpload.file;
            }
            response = await dio.post(
              requestPath,
              data: params,
              cancelToken: cancelToken,
              options: options,
            );
          }
        } else {
          response = await dio.post(
            requestPath,
            data: params,
            cancelToken: cancelToken,
            options: options,
          );
        }
      } else {
        throw Exception('不支持的方法');
      }
      var data = response.data;
      if (data['status']['success'] == true) {
        var body = data['body'];
        if (<String>[] is T && dynamic is! T) {
          return (body as List<dynamic>).cast<String>() as T;
        }
        T? result = response.data.toString().codeUnits.length < 50 * 1024
            ? JsonConvert.fromJsonAsT<T>(body)
            : await compute(
                (jsonData) => JsonConvert.fromJsonAsT<T>(jsonData), body);
        return Future.value(result);
      } else {
        return Future.error(NetException(
          code: data['status']['returnCode'].toString(),
          message: data['status']['message'],
        ));
      }
    } on DioException catch (e, s) {
      println('DioException $e $s');
      return Future.error(NetException(
        code: e.response!.statusCode!.toString(),
        message: await ApiInterceptor.dioError(e),
      ));
    }
  }

  /*
   * post请求
   */
  post<T>(data,
      {queryParameters,
      options,
      cancelToken,
      extra,
      showLoading = false}) async {
    Response response;
    if (showLoading) {
      NavigatorUtils.showLoadingDialog(true);
    }
    try {
      if (DebugConstant.isOpenRequestLog()) {
        log('post data $data');
      }
      response = await dio.post(
        dio.options.extra['requestPath'],
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      if (DebugConstant.isOpenRequestLog()) {
        log('response data ${response.data}');
      }
      return ResponseJsonBody.fromJson(response.data);
    } on DioException catch (e) {
      debugPrint('e====================$e');
      Response errResponse = Response(
        data: {
          'message': await ApiInterceptor.dioError(e)
        }, // 将自定义 Map 数据赋值给 Response 的 data 属性
        statusCode: 200,
        requestOptions: RequestOptions(),
      );
      return errResponse;
    } finally {
      if (showLoading) {
        NavigatorUtils.showLoadingDialog(false);
      }
    }
  }

  /*
   * 取消请求
   *
   * 同一个cancel token 可以用于多个请求，当一个cancel token取消时，所有使用该cancel token的请求都会被取消。
   * 所以参数可选
   */
  void cancelRequests(CancelToken token) {
    token.cancel("cancelled");
  }

  String headerUa({type = 'mob'}) {
    String headerUa = '';
    if (type == 'mob') {
      if (Platform.isIOS) {
        headerUa =
            'Mozilla/5.0 (iPhone; CPU iPhone OS 14_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1 Mobile/15E148 Safari/604.1';
      } else {
        headerUa =
            'Mozilla/5.0 (Linux; Android 10; SM-G975F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Mobile Safari/537.36';
      }
    } else {
      headerUa =
          'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Safari/605.1.15';
    }
    return headerUa;
  }
}

typedef YesCallBack<T> = void Function(T result);
typedef NoCallBack = void Function(NetException? err);

class Result<T> {
  bool hasError;
  bool hasSuccess;
  T? data;

  //错误
  NetException? error;

  Result.iniSuccess(
    this.data,
  )   : hasError = false,
        hasSuccess = true;

  Result.iniFail(this.error)
      : hasError = true,
        hasSuccess = false;

  Result<T> yes(YesCallBack<T?> value) {
    if (hasSuccess) {
      value(data);
    }
    return this;
  }

  Result<T> no(NoCallBack err) {
    if (hasError) {
      err(error);
    }
    return this;
  }
}

class ErrorCode {
  static int NormalError = 500;
  static List<int> ignoreToastCode = [];
}

class UploadFileInfo {
  ///name为null,并且只有一个list的时候,会直接上传流文件
  String? name;
  late MultipartFile file;
  String? path;

  UploadFileInfo({this.name, required this.file, this.path});

  static UploadFileInfo fromPath({String? name, required File file}) {
    return UploadFileInfo(
        name: name,
        file: MultipartFile.fromFileSync(file.path),
        path: file.path);
  }

  static Future<UploadFileInfo> fromXFile(
      {String? name, required XFile file}) async {
    return UploadFileInfo(
        name: name,
        file: MultipartFile.fromBytes(await file.readAsBytes()),
        path: file.path);
  }

  static Future<UploadFileInfo> fromBytes(
      {String? name, required String path, required Uint8List bytes}) async {
    return UploadFileInfo(
        name: name, file: MultipartFile.fromBytes(bytes), path: path);
  }
}
