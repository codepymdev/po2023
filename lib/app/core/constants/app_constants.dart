import 'package:flutter/material.dart';

const String fontName = 'Roboto';
const double leastPadValue = 5;
const double basePadValue = 10;
const double smallPadValue = 20;
const double mediumPadValue = 30;
const double largePadValue = 40;
const double smallTextLength = 70;
const double mediumTextLength = 130;
const sidePad = EdgeInsets.symmetric(horizontal: 10);
const topPad = EdgeInsets.symmetric(vertical: 10);
const colorGreenShadow5 = Color.fromRGBO(1, 184, 52, .05);

const sideTopPad = EdgeInsets.symmetric(horizontal: 70, vertical: 30);

const primaryColor = Color.fromRGBO(1, 184, 52, 1.0);
const colorRed = Color.fromRGBO(212, 7, 2, 1.0);
const primaryColorLightGreen = Color.fromRGBO(1, 184, 52, 0.05);
const colourBlack = Color.fromRGBO(48, 47, 48, 1.0);
const colorGrey = Color.fromRGBO(217, 217, 217, 1.0);
const colorPending = Color.fromRGBO(242, 157, 86, 1.0);
const colorWhite = Color.fromRGBO(255, 255, 255, 1.0);
const Color appItemColorWhite = Colors.white;

const kHintTextStyle = TextStyle(
  color: colourBlack,
  fontFamily: fontName,
);

const kLabelStyle = TextStyle(
  color: colorWhite,
  fontWeight: FontWeight.bold,
  fontFamily: fontName,
);

const kTextStyleBold = TextStyle(
    color: primaryColor,
    fontWeight: FontWeight.bold,
    fontFamily: fontName,
    fontSize: 22);

const kTextStyleNorm = TextStyle(
  color: colorWhite,
  fontFamily: fontName,
  fontSize: 22,
);

const EdgeInsets edgePaddingLeft = EdgeInsets.only(left: 20.0);

const MaterialColor appBackgroundMaterialColor = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xff01B834), //10%0%
  },
);

const TextStyle cancelTextStyle =
    TextStyle(fontSize: 14.0, color: colorRed, fontWeight: FontWeight.w600);
const TextStyle okTextStyle =
    TextStyle(fontSize: 14.0, color: primaryColor, fontWeight: FontWeight.w600);

const TextTheme textThemeDefault = TextTheme(
  headline1: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 26),
  headline2: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 22),
  headline3: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 20),
  headline4: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 16),
  headline5: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 14),
  headline6: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 12),
  bodyText1: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.5),
  bodyText2: TextStyle(
      color: colorWhite,
      fontFamily: fontName,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.5),
  subtitle1: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontSize: 12,
      fontWeight: FontWeight.w400),
  subtitle2: TextStyle(
      color: colorWhite,
      fontFamily: fontName,
      fontSize: 12,
      fontWeight: FontWeight.w400),
  caption: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 16),
  labelMedium: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 22),
  button: TextStyle(
      color: colorWhite,
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 18),
);

const TextTheme textThemeSmall = TextTheme(
  headline1: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 22),
  headline2: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 20),
  headline3: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 18),
  headline4: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 14),
  headline5: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 12),
  headline6: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 10),
  bodyText1: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 1.5),
  bodyText2: TextStyle(
      color: colorWhite,
      fontFamily: fontName,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 1.5),
  subtitle1: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontSize: 10,
      fontWeight: FontWeight.w400),
  subtitle2: TextStyle(
      color: colorWhite,
      fontFamily: fontName,
      fontSize: 10,
      fontWeight: FontWeight.w400),
  caption: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 14),
  labelMedium: TextStyle(
      color: primaryColor,
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 20),
  button: TextStyle(
      color: colorWhite,
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 18),
);

const states = [
  'FCT',
  'Abia',
  'Adamawa',
  'Akwa Ibom',
  'Anambra',
  'Bauchi',
  'Bayelsa',
  'Benue',
  'Borno',
  'Cross River',
  'Delta',
  'Ebonyi',
  'Edo',
  'Ekiti',
  'Enugu',
  'Gombe',
  'Imo',
  'Jigawa',
  'Kaduna',
  'Kano',
  'Katsina',
  'Kebbi',
  'Kogi',
  'Lagos',
  'Nasarawa',
  'Niger',
  'Ogun',
  'Ondo',
  'Osun',
  'Oyo',
  'Plateau',
  'Rivers',
  'Sokoto',
  'Taraba',
  'Yobe',
  'Zamfara',
];
