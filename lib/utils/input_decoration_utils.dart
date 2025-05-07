import 'package:distribution_mall_flutter/constant/cf_constant.dart';
import 'package:flutter/material.dart';

InputDecoration formInputDecoration = const InputDecoration(
// labelText: S.current.NAME,
  contentPadding: EdgeInsets.symmetric(horizontal: 5),
// isDense: true,
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorConstant.grey233, width: 0.9),
      borderRadius: BorderRadius.all(Radius.circular(RadiusConstant.edge10))),
  errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(255, 0, 0, 1), width: 0.9),
      borderRadius: BorderRadius.all(Radius.circular(RadiusConstant.edge10))),
  focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(255, 0, 0, 0.7), width: 0.9),
      borderRadius: BorderRadius.all(Radius.circular(RadiusConstant.edge10))),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 0.9),
      borderRadius: BorderRadius.all(Radius.circular(RadiusConstant.edge10))),
  hintStyle: TextStyle(
    fontSize: FontConstant.f127,
    color: Color.fromRGBO(119, 119, 119, 1),
    textBaseline: TextBaseline.alphabetic, // 设置文本基线为基准线
  ),
);
