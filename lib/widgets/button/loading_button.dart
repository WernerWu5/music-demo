import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:distribution_mall_flutter/utils/common_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'loading_button.g.dart';

class LoadingElevatedButton extends ConsumerStatefulWidget {
  final Widget child;
  final String providerKey;
  final VoidCallback? onPressed;

  const LoadingElevatedButton(
      {super.key,
      required this.child,
      this.onPressed,
      required this.providerKey});

  @override
  ConsumerState<LoadingElevatedButton> createState() =>
      _LoadingElevatedButtonState();
}

class _LoadingElevatedButtonState extends ConsumerState<LoadingElevatedButton> {
  @override
  Widget build(BuildContext context) {
    var show = ref.watch(loadingButtonProvider(widget.providerKey));
    click() {
      if (!ref.read(loadingButtonProvider(widget.providerKey)) &&
          widget.onPressed != null) {
        widget.onPressed!();
      }
    }

    return ElevatedButton(
        onPressed: click,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (show)
              Container(
                margin: const EdgeInsets.only(right: 8),
                child: const CupertinoActivityIndicator(
                  radius: 24 * 0.4,
                  color: ColorConstant.grey156,
                ),
              ),
            widget.child,
          ],
        ));
  }
}

@riverpod
class LoadingButton extends _$LoadingButton {
  @override
  bool build(String key) {
    return false;
  }

  void showLoading() {
    state = true;
  }

  void hideLoading() {
    state = false;
  }
}
