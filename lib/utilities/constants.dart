import 'package:flutter/material.dart';
import 'dart:ui';

class Constants {
  static String assetsImagePath = 'assets/images/';
  static const String fontName = 'Roboto';
  static double leastPadValue = 5;
  static double basePadValue = 10;
  static double smallPadValue = 20;
  static double? mediumPadValue = 30;
  static double? largePadValue = 40;
  static double? smallTextLength = 70;
  static double? mediumTextLength = 130;
  static final sidePad = EdgeInsets.symmetric(horizontal: 10);
  static final topPad = EdgeInsets.symmetric(vertical: 10);
  static final sideTopPad = EdgeInsets.symmetric(horizontal:70, vertical: 30);

  static double getScreenPercentSize(BuildContext context, double percent) {
    return (MediaQuery.of(context).size.height * percent) / 100;
  }

  static double getWidthPercentSize(BuildContext context, double percent) {
    return (MediaQuery.of(context).size.width * percent) / 100;
  }

  static const MaterialColor appBackgroundMaterialColor = MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50: Color(0xff01B834), //10%0%
    },
  );
}

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

// MaterialColor appBackgroundMaterialColors = Colors.green;

Color primaryColor = "#01B834".toColor();
const primaryColorGreen = Color.fromRGBO(1, 184, 52, 1.0);
const colorGreenShadow5 = Color.fromRGBO(1, 184, 52, .05);
const colorRed = Color.fromRGBO(212, 7, 2, 1.0);
const primaryColorLightGreen = Color.fromRGBO(1, 184, 52, 0.05);
const colourBlack = Color.fromRGBO(48, 47, 48, 1.0);
const colorGrey = Color.fromRGBO(217, 217, 217, 1.0);
const colorPending = Color.fromRGBO(242, 157, 86, 1.0);
const colorWhite = Color.fromRGBO(255, 255, 255, 1.0);
const Color appItemColorWhite = Colors.white;
final Color? appItemColorLightGrey = Colors.grey[200];

final EdgeInsets edgePaddingLeft = const EdgeInsets.only(left: 20.0);

final kHintTextStyle = TextStyle(
  color: colourBlack,
  fontFamily: Constants.fontName,
);

final kLabelStyle = TextStyle(
  color: colorWhite,
  fontWeight: FontWeight.bold,
  fontFamily: Constants.fontName,
);

final kTextStyleBold = TextStyle(
    color: primaryColorGreen,
    fontWeight: FontWeight.bold,
    fontFamily: Constants.fontName,
    fontSize: 22);

final kTextStyleNorm = TextStyle(
  color: colorWhite,
  fontFamily: Constants.fontName,
  fontSize: 22,
);

final kBoxDecorationStyle = BoxDecoration(
  color: primaryColorGreen,
  // color: Color(0xFF6CA8F1),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: colourBlack,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);

const TextStyle cancelTextStyle = TextStyle(
    fontSize: 14.0,
    color: colorRed,
    fontWeight: FontWeight.w600
);
const TextStyle okTextStyle = TextStyle(
    fontSize: 14.0,
    color: primaryColorGreen,
    fontWeight: FontWeight.w600
);

const TextStyle boldStyle = TextStyle(
    fontSize: 16.0,
    color: colourBlack,
    fontWeight: FontWeight.w700
);

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
  headline1: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 26),
  headline2: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 22),
  headline3: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 20),
  headline4: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 16),
  headline5: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 14),
  headline6: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 12),
  bodyText1: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.5),
  bodyText2: TextStyle(
      color: colorWhite,
      fontFamily: Constants.fontName,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.5),
  subtitle1: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontSize: 12,
      fontWeight: FontWeight.w400),
  subtitle2: TextStyle(
      color: colorWhite,
      fontFamily: Constants.fontName,
      fontSize: 12,
      fontWeight: FontWeight.w400),
  caption: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 16),
  labelMedium: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 22),
  button: TextStyle(
      color: colorWhite,
      fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 18),
);

const TextTheme TEXT_THEME_SMALL = TextTheme(
  headline1: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 22),
  headline2: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 20),
  headline3: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 18),
  headline4: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 14),
  headline5: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 12),
  headline6: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 10),
  bodyText1: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 1.5),
  bodyText2: TextStyle(
      color: colorWhite,
      fontFamily: Constants.fontName,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 1.5),
  subtitle1: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontSize: 10,
      fontWeight: FontWeight.w400),
  subtitle2: TextStyle(
      color: colorWhite,
      fontFamily: Constants.fontName,
      fontSize: 10,
      fontWeight: FontWeight.w400),
  caption: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 14),
  labelMedium: TextStyle(
      color: primaryColorGreen,
      fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 20),
  button: TextStyle(
      color: colorWhite,
      fontFamily: Constants.fontName,
      fontWeight: FontWeight.w700,
      fontSize: 18),
);
