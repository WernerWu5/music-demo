import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCode extends StatelessWidget {
  final int length;
  final bool autoFocus;
  final ValueChanged<String>? onCompleted;

  const PinCode(
      {super.key,
      required this.length,
      this.onCompleted,
      this.autoFocus = false});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      keyboardType: TextInputType.number,
      pastedTextStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      length: length,
      // obscureText: true,
      // obscuringCharacter: '*',
      // obscuringWidget: const FlutterLogo(
      //   size: 24,
      // ),
      autoFocus: autoFocus,
      blinkWhenObscuring: true,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 59.2,
        fieldWidth: 44.6,
        activeColor: const Color.fromRGBO(241, 242, 246, 1),
        selectedColor: ColorConstant.grey136,
        selectedFillColor: ColorConstant.grey136,
        inactiveColor: const Color.fromRGBO(241, 242, 246, 1),
        inactiveFillColor: const Color.fromRGBO(241, 242, 246, 1),
        activeFillColor: Colors.white,
      ),
      cursorColor: Colors.black,
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      boxShadows: const [
        BoxShadow(
          offset: Offset(0, 1),
          color: Colors.black12,
          blurRadius: 10,
        )
      ],
      onCompleted: onCompleted,
    );
  }
}
