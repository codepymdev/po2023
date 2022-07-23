import 'package:flutter/material.dart';

class BoldText extends StatelessWidget{
  final String? myText;
  final ThemeData themeData;


  const BoldText({required this.myText, required this.themeData});

  @override
  Widget build(BuildContext context) {
    return Text(myText!,
        style: themeData.textTheme.caption,
        overflow: TextOverflow.ellipsis,
    );
  }
}