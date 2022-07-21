import 'package:flutter/material.dart';
import 'package:po2023/utilities/constants.dart';

class IconUserButton extends StatelessWidget{
  final String? buttonText;
  final IconData? buttonIcon;
  final Function? buttonEvent;
  final ThemeData themeData;
  final Color iconColor;

  const IconUserButton({Key? key, this.buttonIcon, this.buttonText, this.buttonEvent,
    required this.themeData, required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: buttonEvent as void Function()?,
      label: Text(buttonText!, style: themeData.textTheme.bodyText1,),
      icon: Icon(buttonIcon, color: iconColor,),
      style: ElevatedButton.styleFrom(
        primary: colorGrey,
        onPrimary: primaryColorGreen,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}