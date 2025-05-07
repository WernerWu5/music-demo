import 'package:oktoast/oktoast.dart';

extension ToastExt on String {
  void toast({Duration? duration}) {
    showToast(this, duration: duration);
  }
}
