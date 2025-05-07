import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
// import 'package:image_compression_flutter/image_compression_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'debug.dart';

class ImageUtils {
  static Future<File> compressFile(File data, int jpgQuality,
      [count = 3]) async {
    if (kIsWeb) {
      return data;
    }
    if (jpgQuality < 0) {
      return data;
    }
    try {
      println("大小${await data.length()}");
      //小于1m不压缩
      if ((await data.length()) < (1024 * 1024 * 1)) {
        println("不压缩了");
        return data;
      } else {
        println("压缩了");
        Directory tempDir = await getTemporaryDirectory();
        File outputFile = File(
            '${tempDir.path}/${DateTime.now().microsecondsSinceEpoch}.jpg');
        XFile? resultFile = await FlutterImageCompress.compressAndGetFile(
            data.absolute.path, outputFile.absolute.path,
            quality: jpgQuality, format: CompressFormat.jpeg);
        if (resultFile == null) {
          return data;
        }
        return compressFile(outputFile, jpgQuality ~/ 2);
      }
    } catch (e, stackTrace) {
      debugPrint('compressFile $e $stackTrace');
      return data;
    }
  }

  static Future<Uint8List> webCompressImage(Uint8List imgBytes,
      {required String path, int quality = 50}) async {
    // if ((imgBytes.length) < (1024 * 1024 * 1)) {
    //   println("不压缩了");
    //   return imgBytes;
    // }
    // final input = ImageFile(
    //   rawBytes: imgBytes,
    //   filePath: path,
    // );
    // Configuration config = Configuration(
    //   outputType: ImageOutputType.jpg,
    //   // can only be true for Android and iOS while using ImageOutputType.jpg or ImageOutputType.pngÏ
    //   useJpgPngNativeCompressor: false,
    //   // set quality between 0-100
    //   quality: quality,
    // );
    // final param = ImageFileConfiguration(input: input, config: config);
    // final output = await compressor.compress(param);
    return Uint8List(1);
  }
}
