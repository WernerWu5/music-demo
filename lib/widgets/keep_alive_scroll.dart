import 'package:flutter/material.dart';

class EPKeepAliveScrollWidget extends StatefulWidget {
  final Widget child;

  const EPKeepAliveScrollWidget({super.key, required this.child});
  @override
  createState() => _EPKeepAliveScrollWidgetState();
}

class _EPKeepAliveScrollWidgetState extends State<EPKeepAliveScrollWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context); // 必须调用 super.build
    return widget.child;
  }
}
