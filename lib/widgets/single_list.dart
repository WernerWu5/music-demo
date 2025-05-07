import 'dart:ui';

import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:distribution_mall_flutter/constant/image_constant.dart';
import 'package:distribution_mall_flutter/provider/common/single_list.dart';
import 'package:distribution_mall_flutter/utils/image_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SingleList extends ConsumerStatefulWidget {
  final Widget Function(BuildContext context, int index, dynamic item)
      itemBuilder;
  final Future<dynamic> Function(Map<String, dynamic> arg) onRefresh;
  final Map<String, dynamic> params;
  const SingleList({
    super.key,
    required this.itemBuilder,
    required this.onRefresh,
    required this.params,
  });

  @override
  ConsumerState createState() => _SingleList();
}

class _SingleList extends ConsumerState<SingleList> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((msg) {
      ref.read(singleListProvider.notifier).initListener();

      ref
          .read(singleListProvider.notifier)
          .initState(widget.onRefresh, widget.params);
    });
  }

  @override
  Widget build(BuildContext context) {
    final modal = ref.watch(singleListProvider);
    return CustomScrollView(
      slivers: [
        // SliverPersistentHeader(
        //     floating: true,
        //     pinned: true,
        //     delegate: _MySliverPersistentHeaderDelegate(
        //         minHeight: 0,
        //         maxHeight: 100,
        //         child: Container(
        //           child: BackdropFilter(
        //             filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        //             child: Container(
        //               color: Colors.black.withOpacity(0.4),
        //             ),
        //           ),
        //         ))
        //     // FlexibleSpaceBar(
        //     //       background: BackdropFilter(
        //     //         filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        //     //         child: Container(
        //     //           color: Colors.black.withOpacity(0.4),
        //     //         ),
        //     //       ),
        //     //     )
        //     ),
        SliverAppBar(
          floating: true,
          expandedHeight: 100.0,
          backgroundColor: Colors.transparent,
          flexibleSpace: FlexibleSpaceBar(
            background: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
        ),
        SliverList.separated(
            itemCount: modal.list?.length ?? 0,
            itemBuilder: (BuildContext context, int index) {
              return widget.itemBuilder(context, index, modal.list?[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: 10, // 间隔高度
                color: Colors.white, // 间隔的背景色
              );
            })
      ],
    );
  }
}

class _MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  _MySliverPersistentHeaderDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_MySliverPersistentHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
