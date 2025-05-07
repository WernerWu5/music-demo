class ResponseStatus {
  String? domainCode;
  String? message;
  String? path;
  String? returnCode;
  bool? success;

  ResponseStatus(
      {this.domainCode,
      this.message,
      this.path,
      this.returnCode,
      this.success});

  ResponseStatus.fromJson(Map<String, dynamic> json) {
    domainCode = json['domainCode'];
    message = json['message'];
    path = json['path'];
    returnCode = json['returnCode'];
    success = json['success'];
  }
}

class ResponseData<T> {
  T? body;
  ResponseStatus? status;

  ResponseData({required this.body, required this.status});

  ResponseData.fromJson(Map<String, dynamic> json,
      T Function(Map<String, dynamic>) bodyFromJson) {
    body = bodyFromJson(json['body'] ?? {});
    status = ResponseStatus.fromJson(json['status']);
  }
}

class ResponseJsonBody {
  dynamic body;
  ResponseStatus? status;

  ResponseJsonBody({required this.body, required this.status});

  ResponseJsonBody.fromJson(Map<String, dynamic> json) {
    body = json['body'] ?? {};
    status = ResponseStatus.fromJson(json['status']);
  }
}
