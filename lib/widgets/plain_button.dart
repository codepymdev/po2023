import 'package:flutter/material.dart';
import 'package:po2023/utilities/constants.dart';

class PlainButton extends StatelessWidget {
  final String text;
  final Function? buttonEvent;
  final TextStyle textStyle;
  final BorderRadiusGeometry borderRadius;
  const PlainButton({Key? key, required this.textStyle, required this.text,
    required this.buttonEvent, required this.borderRadius}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final ButtonStyle textButtonStyle = TextButton.styleFrom(
      backgroundColor: primaryColorGreen,
      // primary: Colors.white.withAlpha(55),
      primary: appItemColorWhite,
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
    );
    return TextButton(
        style: textButtonStyle,
        onPressed: buttonEvent as void Function()?,
        child: Text(
          text,
          style: textStyle,
        )
    );
  }
}