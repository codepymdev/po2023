import 'package:flutter/material.dart';

double getScreenPercentSize(BuildContext context, double percent) {
  return (MediaQuery.of(context).size.height * percent) / 100;
}

double getWidthPercentSize(BuildContext context, double percent) {
  return (MediaQuery.of(context).size.width * percent) / 100;
}

extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF $hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}
