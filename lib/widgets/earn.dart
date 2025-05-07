import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:distribution_mall_flutter/generated/l10n.dart';
import 'package:distribution_mall_flutter/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class EPEarn extends StatelessWidget {
  final String text;
  final double marginTop;
  final double? height;
  final List<InlineSpan>? endSpan;
  const EPEarn({super.key, required this.text, this.marginTop = 6.4,this.height, this.endSpan});

  @override
  Widget build(BuildContext context) {
    return Skeleton.leaf(
        child: Visibility(
      visible: text.isNotEmpty &&
          double.tryParse(text) != null &&
          double.tryParse(text)! > 0,
      child: Container(
        margin: EdgeInsets.only(top: marginTop),
        padding: const EdgeInsets.symmetric(horizontal: 3.6),
        height: height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(3.6)),
          border: Border.all(
            color: const Color.fromRGBO(255, 117, 76, 1),
            width: 0,
          ),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(255, 117, 76, 1),
              Color.fromRGBO(255, 54, 85, 1)
            ],
            stops: [0.135, 0.98],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Utils.currencyWidget(text,
            mainAxisSize: MainAxisSize.min,
            commonStyle: const TextStyle(
              letterSpacing: TextConstant.letterSpacing,
              color: Colors.white,
              fontSize: 14,
            ),
            endSpan: endSpan,
            symbolStyle: const TextStyle(
              letterSpacing: TextConstant.letterSpacing,
              color: Colors.white,
              fontSize: 14,
            ),
            label: '${S.current.Kita}: '),
      ),
    ));
  }
}
