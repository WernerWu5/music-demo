import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EPListScroll extends StatefulWidget {
  const EPListScroll({
    super.key,
    this.listTitle,
    this.count = 0,
    this.pageSize = 20,
    this.child,
    this.request, // 请求列表项数据的回调函数
  });

  final Widget? listTitle;
  final int count;
  final int pageSize;
  final Widget? child;
  final AsyncCallback? request;

  @override
  State<EPListScroll> createState() {
    return _ListScroll();
  }
}

class _ListScroll extends State<EPListScroll> {
  final ScrollController _scrollController = ScrollController();
  int pageNum = 1;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      // 滚动到底部
      if (_scrollController.offset ==
          _scrollController.position.maxScrollExtent) {
        loadMore();
      }
    });
  }

  loadMore() {
    widget.request!().then((value) => {}).whenComplete(() => null);
    setState(() {
      pageNum++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget.listTitle ?? const SizedBox.shrink(),
        Expanded(
            // separated
            child: ListView.separated(
                controller: _scrollController,
                itemCount: widget.count,
                separatorBuilder: (context, index) => const Opacity(
                      opacity: 0,
                      child: SizedBox(
                        height: EdgeConstant.edge10,
                      ),
                    ),
                itemBuilder: (BuildContext context, int index) {
                  return widget.child ?? const SizedBox.shrink();
                }))
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
