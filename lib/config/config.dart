import 'dart:io';

import 'package:flutter/foundation.dart';

class Config {
  //一次获取最大数量
  static int maxSize = (kIsWeb ||
          Platform.isFuchsia ||
          Platform.isWindows ||
          Platform.isMacOS ||
          Platform.isLinux)
      ? 30
      : 20;

  //是否开发模式
  static bool isDebug = true;
}
