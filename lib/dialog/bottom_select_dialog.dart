import 'package:collection/collection.dart';
import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/generated/l10n.dart';
import 'package:distribution_mall_flutter/router/route_utils.dart';
import 'package:distribution_mall_flutter/utils/common_widget.dart';
import 'package:flutter/material.dart';

/// 左右选择的dialog
class BottomSelectDialog extends StatelessWidget {
  final List<String> content;

  const BottomSelectDialog({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 16),
          ...content.mapIndexed((i, e) => Column(
                children: [
                  ListTile(
                    onTap: () {
                      appRouter.maybePop(i);
                    },
                    title: Text(e),
                  ),
                  const Divider(),
                ],
              )),
          ListTile(
            onTap: () {
              RouteUtils.back();
            },
            title: Text(S.current.cancel.toLowerCase()),
          )
        ],
      ),
    );
  }
}
