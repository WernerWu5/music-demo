import 'package:distribution_mall_flutter/config/config.dart';
import 'package:logger/logger.dart';

class LogUtil {
  static final Logger _logger = Logger(
    printer: PrefixPrinter(
      PrettyPrinter(
        stackTraceBeginIndex: 0,
        // 方法栈的开始下标
        methodCount: 3,
        // 打印方法栈的个数
        errorMethodCount: 8,
        // 自己传入方法栈对象后该参数有效
        lineLength: 120,
        // 每行最多打印的字符个数
        colors: true,
        // 日志是否有颜色
        printEmojis: true,
        // 是否打印 emoji 表情
        printTime: true, // 是否打印时间
      ),
    ),
  );

  static void d(dynamic message) {
    if (Config.isDebug) {
      _logger.d(message);
    }
  }

  static void i(dynamic message) {
    if (Config.isDebug) {
      _logger.i(message);
    }
  }

  static void w(dynamic message) {
    if (Config.isDebug) {
      _logger.w(message);
    }
  }

  static void e(dynamic message) {
    if (Config.isDebug) {
      _logger.e(message);
    }
  }
}
