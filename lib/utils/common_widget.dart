import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:distribution_mall_flutter/constant/constant.dart';
import 'package:distribution_mall_flutter/router/route_utils.dart';
import 'package:distribution_mall_flutter/widgets/icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

class CommonTextWidget {
  static Widget titleText(
      {required String text,
      dynamic icon,
      EdgeInsets padding = EdgeInsets.zero}) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
                fontSize: FontConstant.f15,
                color: ColorConstant.black,
                fontWeight: FontWeight.bold),
          ),
          icon ?? const SizedBox.shrink()
        ],
      ),
    );
  }
}

class CommonBtnWidget {
  static Widget generalBtn(
    Function()? onPressed, {
    double radius = 7.3,
    double? width,
    double? height,
    String? text,
    double marginLeft = 0,
    double loadingSize = 24,
    Color color = ColorConstant.primaryColor,
    BorderSide? borderSide,
    Widget? icon,
    BoxBorder? border,
    Color backgroundColor = ColorConstant.primaryColor,
    TextStyle textStyle = const TextStyle(
        color: Colors.white,
        fontSize: FontConstant.f146,
        letterSpacing: TextConstant.letterSpacing),
    bool isLoading = false,
    bool fullWidthButton = false,
  }) {
    return Container(
        width: width,
        height: height,
        margin: EdgeInsets.only(left: marginLeft),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          border: border,
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
              child: Text(text ?? '', style: textStyle),
            )));
  }

  static Widget arrowBack(
      {Function()? onPressed, IconData icon = Icons.arrow_back_ios}) {
    return EPIconButton(
      onPressed: onPressed ??
          () {
            RouteUtils.back();
          },
      icon: Icon(
        icon,
        size: 17,
        color: const Color.fromRGBO(0, 0, 0, 0.9),
      ),
    );
  }

  static Widget arrowRight(
      {Function()? onPressed,
      double size = 17,
      Color color = const Color.fromRGBO(0, 0, 0, 0.9)}) {
    return EPIconButton(
      onPressed: onPressed,
      icon: Icon(
        Icons.arrow_forward_ios,
        size: size,
        color: color,
      ),
    );
  }

  static Widget textBtn(
      {required Function() onPressed,
      String? text,
      double? width,
      double? height,
      Color? color,
      Color? textColor,
      BorderSide? borderSide,
      TextStyle textStyle = const TextStyle(
        color: Colors.white,
        fontSize: FontConstant.f11,
      ),
      double highlightElevation = 1,
      bool hideHightLight = false,
      double? fixWidth,
      Color backgroundColor = ColorConstant.primaryColor,
      EdgeInsets padding = EdgeInsets.zero}) {
    return Container(
        width: fixWidth,
        height: height,
        constraints: BoxConstraints(minWidth: width ?? 0),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
          child: Text(text ?? '', style: textStyle),
        ));
  }

  static Widget transparentBtn(
      {required Function() onPressed,
      String? text,
      double? width,
      double? height,
      TextStyle textStyle = const TextStyle(
        color: ColorConstant.grey230,
        fontSize: FontConstant.f11,
      ),
      double marginLeft = 0,
      Color color = Colors.white,
      BorderSide borderSide =
          const BorderSide(color: ColorConstant.grey233, width: 0.9),
      EdgeInsets padding =
          const EdgeInsets.symmetric(horizontal: EdgeConstant.edge17)}) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: marginLeft),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text ?? '', style: textStyle),
      ),
    );
  }
}

class CommonPopWidget {
  static void showPop({
    required BuildContext context,
    required Widget Function(BuildContext) bodyBuilder,
    PopoverDirection direction = PopoverDirection.bottom,
    double width = 100,
    double height = 47,
    double arrowDxOffset = -5,
    double arrowDyOffset = 0,
    double contentDyOffset = 0,
    double contentDxOffset = 0,
  }) {
    showPopover(
      context: context,
      bodyBuilder: bodyBuilder,
      // onPop: () => print('Popover was popped!'),
      barrierColor: Colors.transparent,
      direction: direction,
      width: width,
      height: height,
      arrowHeight: 6,
      arrowWidth: 10,
      shadow: const [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.12),
          blurRadius: 5,
        )
      ],
      arrowDxOffset: arrowDxOffset,
      arrowDyOffset: arrowDyOffset,
      contentDyOffset: contentDyOffset,
      contentDxOffset: contentDxOffset,
    );
  }
}
