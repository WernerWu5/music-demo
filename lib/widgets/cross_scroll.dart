import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:distribution_mall_flutter/constant/image_constant.dart';
import 'package:distribution_mall_flutter/utils/image_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CrossScroll extends ConsumerStatefulWidget {
  final Widget Function(dynamic arg) child;
  final int childLength;
  final int? activeIndex;
  final Function(int i)? onTap;
  final TabController? tabController;
  final EdgeInsets labelPadding;
  const CrossScroll({
    super.key,
    required this.child,
    required this.childLength,
    this.onTap,
    this.tabController,
    this.activeIndex = 0,
    this.labelPadding = const EdgeInsets.symmetric(horizontal: 10),
  });

  @override
  ConsumerState createState() => _CrossScroll();
}

class _CrossScroll extends ConsumerState<CrossScroll>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((msg) {});
  }

  Widget renderTab() {
    return SizedBox(
      width: double.infinity,
      child: TabBar(
          controller: widget.tabController,
          onTap: widget.onTap ?? (int i) {},
          tabAlignment: TabAlignment.start,
          labelStyle: const TextStyle(
              fontSize: FontConstant.f16,
              fontWeight: FontWeight.bold,
              color: Colors.white),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
          // indicatorColor: Colors.black,
          // unselectedLabelColor: Colors.redAccent,
          // indicatorSize: TabBarIndicatorSize.label,
          // indicator: BoxDecoration(
          //   color: Colors.redAccent,
          //   borderRadius: BorderRadius.circular(50),
          //   // border: Border.all(
          //   //   color: Colors.redAccent,
          //   //   width: 1,
          //   // ),
          // ),
          // 去掉tab边框宽度
          indicatorWeight: 0,
          indicator: const BoxDecoration(),
          splashBorderRadius: BorderRadius.circular(50),
          labelPadding: widget.labelPadding,
          isScrollable: true,
          dividerColor: Colors.transparent,
          // 去掉水波纹
          splashFactory: NoSplash.splashFactory,
          // automaticIndicatorColorAdjustment: false,
          // const BoxDecoration(
          //     border: Border(
          //         bottom:
          //             BorderSide(color: ColorConstant.primaryColor, width: 2))),
          tabs: List.generate(
              widget.childLength, (index) => widget.child(index))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.tabController == null
        ? DefaultTabController(
            length: widget.childLength,
            initialIndex: widget.activeIndex ?? 0,
            child: renderTab())
        : renderTab();
  }
}
