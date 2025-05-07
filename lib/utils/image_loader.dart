import 'package:cached_network_image/cached_network_image.dart';
import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:distribution_mall_flutter/constant/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ImageLoader {
  static const String rootPaht = 'assets/icons/';

  static Widget imageAsset(String icon,
          {double scale = 1.0,
          double? width,
          double? height,
          double? commonWH,
          BoxFit? fit,
          Key? key,
          Alignment alignment = Alignment.center,
          ImageRepeat repeat = ImageRepeat.noRepeat,
          double radius = 0,
          bool hasRoot = true}) =>
      SizedBox(
        key: key,
        width: commonWH ?? width,
        height: commonWH ?? height,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: Image.asset((hasRoot ? rootPaht : '') + icon,
                width: commonWH ?? width,
                height: commonWH ?? height,
                fit: fit,
                alignment: alignment,
                repeat: repeat)),
      );

  static Widget imageNet(String url,
          {double scale = 1.0,
          bool onlyNetwork = false,
          double? width,
          double? height,
          double? commonWH,
          BoxFit? fit,
          Alignment alignment = Alignment.center,
          ImageRepeat repeat = ImageRepeat.noRepeat,
          double radius = 0,
          BorderRadius? borderRadius,
          bool isReplace = false}) =>
      Skeleton.replace(
          replace: true,
          replacement: Container(
            width: commonWH ?? width,
            height: commonWH ?? height,
            decoration: BoxDecoration(
                // color: ColorConstant.grey237,
                color: const Color(0xFFEBEBF4),
                borderRadius: BorderRadius.all(Radius.circular(radius))),
          ),
          child: SizedBox(
            width: commonWH ?? width,
            height: commonWH ?? height,
            child: ClipRRect(
                borderRadius: borderRadius ?? BorderRadius.circular(radius),
                child: onlyNetwork
                    ? Visibility(
                        visible: url.isNotEmpty,
                        child: Image.network(url,
                            width: commonWH ?? width,
                            height: commonWH ?? height,
                            fit: fit,
                            alignment: alignment,
                            repeat: repeat))
                    : url.isEmpty
                        ? SizedBox(
                            width: commonWH ?? width,
                            height: commonWH ?? height,
                          )
                        : CachedNetworkImage(
                            imageUrl: url,
                            // width: commonWH ?? width,
                            // height: commonWH ?? height,
                            fit: fit,
                            alignment: alignment,
                            repeat: repeat,
                            fadeOutDuration: const Duration(milliseconds: 500),
                            fadeInDuration: const Duration(milliseconds: 250),
                            placeholder: isReplace
                                ? (context, url) => Container(
                                      width: commonWH ?? width,
                                      height: commonWH ?? height,
                                      decoration: const BoxDecoration(
                                          color:
                                              Color.fromRGBO(234, 234, 242, 1)),
                                      child: Image.network(
                                          ImageConstant.skeletonLogo),
                                    )
                                : null,
                            errorWidget: isReplace
                                ? (context, url, error) => Container(
                                      width: commonWH ?? width,
                                      height: commonWH ?? height,
                                      decoration: const BoxDecoration(
                                          color:
                                              Color.fromRGBO(234, 234, 242, 1)),
                                      child: Image.network(
                                          ImageConstant.skeletonLogo),
                                    )
                                : null,
                          )),
          ));
}
