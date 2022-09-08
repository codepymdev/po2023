import 'package:flutter/material.dart';
import 'package:po2023/app/core/constants/app_constants.dart';

final kBoxDecorationStyle = BoxDecoration(
  color: primaryColor,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: const [
    BoxShadow(
      color: colourBlack,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
final Color? appItemColorLightGrey = Colors.grey[200];
