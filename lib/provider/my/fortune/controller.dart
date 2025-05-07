import 'dart:async';
import 'dart:math';

class FortuneState {
  int randomVal = 0;
  // 使用StreamController来重新赋值
  StreamController<int> controller = StreamController<int>();
  bool isLongPress = false;
  bool isEnd = true;
  int index = -1;

  static List<String> items = [
    '马总',
    '雅姐',
    '船长',
    '确实',
    '二哥',
    '路德',
    '旭哥',
    '文添',
    '刘巷',
    '梓鹏',
    '锡灿',
    '志豪',
    '文菲',
    '如涛',
    '彭振',
    '垂拱',
    '潘伦',
    '志聪',
    '国栋'
  ];

  void changeRandomVal() {
    int num = Random().nextInt(items.length - 1);
    if (isLongPress && (index <= 1 && index >= 0)) {
      controller.add(index);
      randomVal = index;
    } else {
      controller.add(num);
      randomVal = num;
    }
    isLongPress = false;
    index = -1;
  }

  void changeLoingPress() {
    isLongPress = true;
  }

  void setIndex(int i) {
    index = i;
  }

  void setEnd(bool bol) {
    isEnd = bol;
  }
}
