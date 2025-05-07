import 'dart:async';

import 'package:distribution_mall_flutter/constant/status_constant.dart';
import 'package:distribution_mall_flutter/generated/l10n.dart';
import 'package:distribution_mall_flutter/utils/log.dart';
import 'package:distribution_mall_flutter/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EPEasyRefresh extends ConsumerStatefulWidget {
  // 0 EasyRefresh, 1  builder
  final int easyRefreshType;
  final Header? header;
  final Footer? footer;
  final bool refreshOnStart;
  final Future<LoadStatus> Function()? onRefresh;
  final Future<LoadStatus> Function()? onLoad;
  final Function(EasyRefreshController con)? callback;
  final Function()? onInit;
  final Widget? child;
  final Widget Function(BuildContext, ScrollPhysics)? childBuilder;
  final ScrollController? scrollController;

  const EPEasyRefresh(
      {super.key,
      this.easyRefreshType = 1,
      this.header,
      this.footer,
      this.refreshOnStart = false,
      this.onLoad,
      this.onRefresh,
      this.child,
      this.onInit,
      this.scrollController,
      this.callback,
      this.childBuilder});

  @override
  ConsumerState createState() => _EPEasyRefresh();
}

class _EPEasyRefresh extends ConsumerState<EPEasyRefresh> {
  late final EasyRefreshController controller;

  // final ScrollController _scrollController = ScrollController();
  @override
  initState() {
    super.initState();
    controller = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.onInit is Function) {
        widget.onInit!();
      }

      controller.finishRefresh();
      controller.resetFooter();
      if (widget.callback is Function) {
        widget.callback!(controller);
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  onRefresh() async {
    if ((widget.onRefresh is! Function())) return;
    try {
      await widget.onRefresh!();
    } finally {
      controller.finishRefresh();
      controller.resetFooter();
    }
  }

  onLoad() async {
    if ((widget.onLoad is! Function())) return;
    LoadStatus loadStatus = await widget.onLoad!();
    controller.finishLoad(loadStatus == LoadStatus.allow
        ? IndicatorResult.success
        : IndicatorResult.noMore);
  }

  Widget render0() {
    return EasyRefresh(
        controller: controller,
        // scrollController: widget.scrollController,
        refreshOnStart: widget.refreshOnStart,
        header: widget.header ??
            const MaterialHeader(
              triggerOffset: 50,
              clamping: true,
              position: IndicatorPosition.locator,
            ),
        footer: widget.footer,
        onRefresh: widget.onRefresh == null ? null : onRefresh,
        onLoad: onLoad,
        child: widget.child);
  }

  Widget render1() {
    return EasyRefresh.builder(
        controller: controller,
        // scrollController: widget.scrollController,
        refreshOnStart: widget.refreshOnStart,
        header: widget.header ??
            const MaterialHeader(
              triggerOffset: 50,
              clamping: true,
              position: IndicatorPosition.locator,
            ),
        footer: widget.footer,
        onRefresh: widget.onRefresh == null ? null : onRefresh,
        onLoad: onLoad,
        childBuilder: widget.childBuilder);
  }

  Widget selectRender() {
    switch (widget.easyRefreshType) {
      case 0:
        return render0();
      case 1:
        return render1();
      default:
        return render0();
    }
  }

  @override
  Widget build(BuildContext context) {
    return selectRender();
  }
}

BuilderHeader easyFirstRefreshBuilderHeader = BuilderHeader(
  triggerOffset: 70,
  clamping: true,
  position: IndicatorPosition.above,
  processedDuration: Duration.zero,
  builder: (ctx, state) {
    if (state.mode == IndicatorMode.inactive ||
        state.mode == IndicatorMode.done) {
      return const SizedBox();
    }
    return Container(
      padding: const EdgeInsets.only(bottom: 100),
      width: double.infinity,
      height: state.viewportDimension,
      alignment: Alignment.center,
      child: const Loading(),
    );
  },
);

MaterialHeader defaultRefreshHeader({IndicatorPosition? position}) {
  return MaterialHeader(
    clamping: true,
    position: position ?? IndicatorPosition.above,
    triggerOffset: 50,
    valueColor: const AlwaysStoppedAnimation(Colors.blue),
  );
}

ClassicFooter defaultRefreshFooter({IndicatorPosition? position}) {
  return ClassicFooter(
      position: position ?? IndicatorPosition.above,
      showMessage: false,
      noMoreIcon: const SizedBox.shrink(),
      spacing: 0,

      ///这个iconDimension是24,所以下面会减去24
      iconDimension: 24,
      processingText: S.current.loading,
      iconTheme: const IconThemeData(color: Colors.black45),
      textStyle: const TextStyle(color: Colors.black45),
      textBuilder: (context, state, currentText) {
        if (state.result == IndicatorResult.noMore) {
          return Container(
            width: MediaQuery.of(context).size.width - 24,
            padding: const EdgeInsets.only(left: 32 - 24, right: 32),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    color: const Color(0xFFEEEEEE),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    right: 16,
                    left: 16,
                  ),
                  child: Text(
                    S.current.noMore,
                    style:
                        const TextStyle(color: Color(0x9C868D96), fontSize: 14),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 1,
                    color: const Color(0xFFEEEEEE),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.only(
              right: 40,
            ),
            child: Text(
              currentText,
              style: const TextStyle(color: Colors.black45),
            ),
          );
        }
      });
}
