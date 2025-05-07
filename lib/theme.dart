import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:flutter/material.dart';

ThemeData appTheme() => ThemeData(
      // useMaterial3: true,
      // // scaffoldBackgroundColor: ColorConstant.grey246,
      // // tabBarTheme: const TabBarTheme(splashFactory: null),
      // scaffoldBackgroundColor: Colors.white,
      // fontFamily: 'Roboto',
      // cardColor: Colors.white,
      // textSelectionTheme: const TextSelectionThemeData(
      //   cursorColor: Colors.black, //thereby
      // ),
      // appBarTheme: const AppBarTheme(
      //     scrolledUnderElevation: 0,
      //     backgroundColor: Colors.white,
      //     elevation: 0,
      //     iconTheme: IconThemeData(color: Colors.black),
      //     centerTitle: false,
      //     titleTextStyle: TextStyle(
      //         color: Color(0xFF1C1C1C),
      //         fontSize: 20,
      //         fontWeight: FontWeight.w700)),
      // // buttonTheme: ButtonThemeData(
      // //   style: Button.styleFrom(
      // //     shape: RoundedRectangleBorder(
      // //       borderRadius: BorderRadius.circular(20.0),
      // //     ),
      // //   ),
      // // ),
      // dialogTheme: DialogTheme(
      //     shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(21),
      // )),
      // listTileTheme: const ListTileThemeData(
      //     titleTextStyle:
      //         TextStyle(color: Colors.black87, fontSize: FontConstant.f146),
      //     subtitleTextStyle:
      //         TextStyle(color: Colors.black45, fontSize: FontConstant.f12)),
      // elevatedButtonTheme: ElevatedButtonThemeData(
      //     style: ButtonStyle(
      //   backgroundColor:
      //       WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      //     if (states.contains(WidgetState.pressed)) {
      //       return const Color(0xFF141414).withOpacity(0.4);
      //     } else if (states.contains(WidgetState.disabled)) {
      //       return const Color(0xFFD0D0D0);
      //     }
      //     return const Color(0xFF141414);
      //   }),
      //   elevation: WidgetStateProperty.all(0),
      //   shape: WidgetStateProperty.all(
      //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      //   textStyle: WidgetStateProperty.all(const TextStyle(
      //       fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600)),
      //   foregroundColor: WidgetStateProperty.all(Colors.white),
      // )),
      // textButtonTheme: TextButtonThemeData(
      //   style: TextButton.styleFrom(
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(7.3),
      //     ),
      //   ),
      // ),
      // outlinedButtonTheme: OutlinedButtonThemeData(
      //   style: ButtonStyle(
      //     shape: WidgetStateProperty.all(RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(8),
      //     )),
      //     side: WidgetStateProperty.all(
      //       const BorderSide(color: Color(0x805483BF), width: 1),
      //     ),
      //     foregroundColor: WidgetStateProperty.all(const Color(0xFF5483BF)),
      //     textStyle: WidgetStateProperty.all(
      //         const TextStyle(fontSize: 16, color: Color(0xFF5483BF))),
      //   ),
      // ),
      // dividerTheme: const DividerThemeData(
      //   color: Color(0xFFE6E9ED),
      //   thickness: 1,
      //   space: 0,
      // ),
      // // textTheme: const TextTheme(),
      colorScheme: const ColorScheme(
        // 必填：表面颜色（卡片、对话框等）
        surface: Colors.white,
        // 可选：表面颜色上的前景颜色
        onSurface: Colors.black,
        // 必填：主要颜色
        primary: Color.fromRGBO(51, 55, 61, 1),
        // 可选：前景颜色（文本、图标等）
        onPrimary: Colors.black,
        // 可选：次要颜色
        secondary: Colors.orange,
        // 可选：前景颜色（文本、图标等）
        onSecondary: Colors.black,
        // 可选：背景颜色
        background: Colors.white,
        // 可选：前景颜色（文本、图标等）
        onBackground: Colors.black,
        // 可选：强调颜色
        error: Colors.red,
        // 可选：前景颜色（文本、图标等）
        onError: Colors.white,
        // 可选：用于按钮等被禁用状态的颜色
        brightness: Brightness.light,
      ),
      inputDecorationTheme: inputDecorationTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide.none,
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    border: outlineInputBorder,
    hintStyle: const TextStyle(
      fontSize: FontConstant.f127,
      color: Color.fromRGBO(119, 119, 119, 1),
      // height: 1.5,
      textBaseline: TextBaseline.alphabetic, // 设置文本基线为基准线
    ),
    errorStyle: const TextStyle(
        color: Color.fromRGBO(226, 117, 117, 1),
        fontSize: 10.9,
        letterSpacing: TextConstant.letterSpacing),
    enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorConstant.grey233, width: 0.9),
        borderRadius: BorderRadius.all(Radius.circular(RadiusConstant.edge10))),
    disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorConstant.grey233, width: 0.9),
        borderRadius: BorderRadius.all(Radius.circular(RadiusConstant.edge10))),
    errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(255, 0, 0, 1), width: 0.9),
        borderRadius: BorderRadius.all(Radius.circular(RadiusConstant.edge10))),
    focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(255, 0, 0, 1), width: 0.9),
        borderRadius: BorderRadius.all(Radius.circular(RadiusConstant.edge10))),
    focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black, width: 0.9),
        borderRadius: BorderRadius.all(Radius.circular(RadiusConstant.edge10))),
  );
}
