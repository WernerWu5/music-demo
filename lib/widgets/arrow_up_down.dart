import 'package:flutter/material.dart';

class EPArrowUpDown extends StatelessWidget {
  final int? activeIndex;
  const EPArrowUpDown({super.key, required this.activeIndex});

  @override
  Widget build(BuildContext context) {
    // return (enableClickEffect ?? false)
    //     ? EPInkWellView(onPressed: onPressed ?? () {}, child: childRender())
    //     : childRender();
    return Column(
      children: [
        SizedBox(
          width: 15,
          height: 7,
          child: Icon(
            Icons.arrow_drop_up,
            color: activeIndex == 0
                ? Colors.black
                : const Color.fromRGBO(135, 141, 149, 0.8),
          ),
        ),
        SizedBox(
          width: 15,
          height: 7,
          child: Icon(
            Icons.arrow_drop_down,
            color: activeIndex == 1
                ? Colors.black
                : const Color.fromRGBO(135, 141, 149, 0.8),
          ),
        ),
      ],
    );
  }
}
