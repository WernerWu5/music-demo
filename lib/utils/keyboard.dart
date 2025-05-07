import 'package:flutter/material.dart' hide Action;
import 'package:flutter/services.dart';

class KeyboardUtils {
  static void hideByContext(context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static void hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}
