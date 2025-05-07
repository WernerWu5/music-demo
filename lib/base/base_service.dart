import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BaseService {
  final AutoDisposeRef ref;

  BaseService(this.ref) {
    onInit();
    WidgetsBinding.instance.addPostFrameCallback((d) {
      onReady();
    });
    ref.onDispose(onClose);
  }

  void onInit() {}

  void onReady() {
    ///当前第一帧渲染完成
  }

  void onClose() {}
}
