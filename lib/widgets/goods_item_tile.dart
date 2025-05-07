import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:distribution_mall_flutter/utils/image_loader.dart';
import 'package:flutter/material.dart';

class EPGoodsItemTileransform {
  String? mainImage;
  String? title;
  EPGoodsItemTileransform({this.mainImage, this.title});

  factory EPGoodsItemTileransform.fromJson(Map<String, dynamic> json) =>
      EPGoodsItemTileransform(
        mainImage: json["mainImage"],
        title: json["title"],
      );
}

class EPGoodsItemTile extends StatelessWidget {
  final bool showLeftIcon;
  final Widget? leftIcon;
  final EPGoodsItemTileransform data;
  final MainAxisAlignment textAxisAlign;
  final Widget? otherChild;

  const EPGoodsItemTile(
      {super.key,
      this.showLeftIcon = false,
      this.leftIcon,
      this.otherChild,
      this.textAxisAlign = MainAxisAlignment.center,
      required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
            visible: showLeftIcon,
            child: IconButton(
              padding: const EdgeInsets.only(left: 0),
              onPressed: () {},
              icon: leftIcon ?? const Icon(Icons.add),
            )),
        ClipRRect(
            borderRadius: BorderRadius.circular(RadiusConstant.edge10),
            child: ImageLoader.imageNet(
              data.mainImage ?? '',
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(left: EdgeConstant.edge10),
          child: Column(
            mainAxisAlignment: textAxisAlign,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.title ?? '',
                textAlign: TextAlign.left,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: FontConstant.f14,
                    letterSpacing: 0.3),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              otherChild ?? const SizedBox.shrink()
            ],
          ),
        ))
      ],
    );
  }
}
