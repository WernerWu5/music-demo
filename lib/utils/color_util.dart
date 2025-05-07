import 'package:flutter/material.dart';

class ColorUtil {
  static List<Color> generateColorList(Color beginColor, Color endColor, int steps) {
    List<Color> colors = [];
    ColorTween colorTween = ColorTween(begin: beginColor, end: endColor);

    for (int i = 0; i <= steps; i++) {
      double t = i / steps;
      colors.add(colorTween.transform(t)!);
    }

    return colors;
  }
}
