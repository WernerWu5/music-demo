import 'dart:async';
import 'dart:math';

class FortuneCradleState {
  int randomVal = 0;
  // 使用StreamController来重新赋值
  StreamController<int> controller = StreamController<int>();
  bool isLongPress = false;
  bool isEnd = true;
  int index = -1;

  List<String> items = ['占位', '占位'];

  void changeRandomVal() {
    int num = Random().nextInt(items.length - 1);
    int i = items.indexOf('钟雅');
    if (isLongPress && index != -1 && index == i) {
      controller.add(i);
      randomVal = i;
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

  void setItems(String str) {
    if (items.contains('占位')) items.remove('占位');
    items.add(str);
  }
}

// class FortuneCradleController extends GetxController {
//   final FortuneCradleState state = FortuneCradleState();

//   void getRandomVal() {
//     state.changeRandomVal();
//     update();
//   }

//   void changeLoingPress() {
//     state.changeLoingPress();
//   }

//   void setIndex(int index) {
//     state.setIndex(index);
//     update();
//   }

//   void setEnd(bool bol) {
//     state.setEnd(bol);
//     update();
//   }

//   void setItems(String str) {
//     state.setItems(str);
//     update();
//   }
// }
