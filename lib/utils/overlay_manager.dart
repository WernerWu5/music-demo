import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'overlay_manager.g.dart';

@riverpod
class OverlayManager extends _$OverlayManager {
  @override
  Map<OverlayEntry, VoidCallback?> build() {
    return {};
  }

  void insert(OverlayEntry item, {VoidCallback? closeListener}) {
    var map = Map<OverlayEntry, VoidCallback?>.from(state);
    map[item] = closeListener;
    Overlay.of(appRouter.navigatorKey.currentContext!).insert(item);
    state = map;
  }

  void close(OverlayEntry? item) {
    if (item != null) {
      var map = Map<OverlayEntry, VoidCallback?>.from(state);
      VoidCallback? overlayCloseListener = map[item];
      map.remove(item);
      item.remove();
      state = map;
      if (overlayCloseListener != null) {
        overlayCloseListener();
      }
    }
  }

  void closeLast() {
    if (state.isNotEmpty) {
      close(state.keys.last);
    }
  }

  bool get isEmpty => state.isEmpty;
}
