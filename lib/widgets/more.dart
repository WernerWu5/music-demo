import 'package:distribution_mall_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';

class EPMore extends StatelessWidget {
  final bool offstage;
  final String text;
  final bool hasIcon;
  const EPMore(
      {super.key,
      required this.offstage,
      required this.text,
      this.hasIcon = true});

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: offstage,
      child: Center(
        child: Row(
          children: <Widget>[
            Visibility(
                visible: hasIcon,
                child: Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(right: 10),
                    child: const SizedBox(
                      width: 14,
                      height: 14,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                    ),
                  ),
                )),
            Expanded(child: Text(text))
          ],
        ),
      ),
    );
  }
}
