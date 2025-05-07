import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
/*
extension AsyncValueExt<T> on AsyncValue<T> {
  Widget whenWidget({
    required Widget Function(T data) data,
  }) {
    return when<Widget>(
        data: data,
        error: (Object error, StackTrace stackTrace) => ErrorPage(),
        loading: () => Loading());
  }
}*/

extension TimerRefreshExtension on AutoDisposeRef<Object?> {
  void timerRefresh(Duration duration, VoidCallback run) {
    var timer = Timer.periodic(duration, (timer) {
      run();
    });
    onDispose(timer.cancel);
  }
}

extension CanelDioExtension on AutoDisposeRef<Object?> {
  CancelToken cancelDio() {
    var cancelToken = CancelToken();
    onDispose(cancelToken.cancel);
    return cancelToken;
  }
}
