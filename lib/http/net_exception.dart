class NetException implements Exception {
  final String code;
  final message;
  final errorData;

  NetException({required this.code, this.message, this.errorData});

  @override
  String toString() {
    if (message == null) return "Exception";
    return "$message errorData $errorData}";
  }
}
