import 'package:distribution_mall_flutter/utils/debug.dart';

class CollectionUtils {
  ///二维数组合并一维
  static List<T> mergeList<T>(Iterable<List<T>> list) {
    List<T> oneDimensionalList = [];

    for (var sublist in list) {
      println('mergeList ${sublist.length}');
      oneDimensionalList.addAll(sublist);
    }
    println('oneDimensionalList ${oneDimensionalList.length}');
    return oneDimensionalList;
  }
}
