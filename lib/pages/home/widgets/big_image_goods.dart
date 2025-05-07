import 'package:distribution_mall_flutter/constant/image_constant.dart';
import 'package:distribution_mall_flutter/utils/image_loader.dart';
import 'package:distribution_mall_flutter/widgets/tag.dart';
import 'package:flutter/material.dart';

class BigImageGoods extends StatelessWidget {
  final bool? isFist;
  final bool? isLast;
  final dynamic data;
  const BigImageGoods(
      {super.key, this.isFist, this.isLast, required this.data});

  @override
  Widget build(BuildContext context) {
    TextStyle priceMiniStyle =
        const TextStyle(color: Colors.black38, fontSize: 11);
    TextStyle priceStyle = const TextStyle(color: Colors.red, fontSize: 14);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(isFist == true ? 0 : 20), // 左上角圆角
          // topLeft: Radius.circular(20), // 左上角圆角
          topRight: Radius.circular(isFist == true ? 0 : 20), // 右上角圆角
          // topRight: Radius.circular(20), // 右上角圆角
          bottomRight: Radius.circular((isLast ?? false) ? 0 : 20), // 右下角没有圆角
          bottomLeft: Radius.circular((isLast ?? false) ? 0 : 20), // 右下角没有圆角
        ),
      ),
      child: Stack(
        children: [
          Visibility(
              visible: isFist == true ? false : true,
              child: Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  child: Container(
                    height: 60,
                    color: Colors.grey[300], // 间隔的背景色
                  ))),
          Visibility(
              visible: isLast == true ? false : true,
              child: Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  height: 30,
                  child: Container(
                    color: Colors.red, // 间隔的背景色
                  ))),
          ImageLoader.imageNet(data?.imageInfo?.imageUrl ?? '',
              fit: BoxFit.cover,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(isFist == true ? 0 : 20), // 左上角圆角
                  // topLeft: Radius.circular(20), // 左上角圆角
                  topRight: Radius.circular(isFist == true ? 0 : 20), // 右上角圆角
                  // topRight: Radius.circular(20), // 右上角圆角
                  bottomRight: Radius.zero,
                  bottomLeft: Radius.zero),
              width: MediaQuery.of(context).size.width,
              height: 350),
          Positioned(
              top: 320,
              height: 140,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'pp',
                              style: priceMiniStyle,
                            ),
                            Text(
                              '123123123',
                              style: priceStyle,
                            ),
                          ],
                        )
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Text(
                                'asfasdjhfasdiofh poiashdfpiuasdhfpsai aipsdfnbhapsi',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis)),
                        Icon(Icons.arrow_right_alt_outlined)
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [EPTag('R&W')],
                    ),
                  ],
                ),
              )),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: 50,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ImageLoader.imageNet(ImageConstant.gLogo,
                          height: 40, width: 40),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Elate Beauty',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'changing the world, one lis',
                          style: TextStyle(fontSize: 12, color: Colors.black87),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
