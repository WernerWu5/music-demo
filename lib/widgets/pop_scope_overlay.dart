import 'package:distribution_mall_flutter/utils/overlay_manager.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PopScopeOverlay extends ConsumerStatefulWidget {
  final Widget child;

  const PopScopeOverlay({super.key, required this.child});

  @override
  ConsumerState<PopScopeOverlay> createState() => _PopScopeOverlayState();
}

class _PopScopeOverlayState extends ConsumerState<PopScopeOverlay> {
  bool canPop = false;

  @override
  Widget build(BuildContext context) {
    var overlayList = ref.watch(overlayManagerProvider);
    // println('overlayList ${overlayList.length}');
    return PopScope(
      canPop: overlayList.isEmpty,
      onPopInvoked: (bool didPop) {
        if (didPop) {
          return;
        } else {
          ref.read(overlayManagerProvider.notifier).closeLast();
        }
      },
      child: widget.child,
    );
  }
}
