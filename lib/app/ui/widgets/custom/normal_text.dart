import 'package:flutter/material.dart';

class NormalText extends StatelessWidget{
  final String? myText;
  final ThemeData themeData;


  const NormalText({required this.myText, required this.themeData});

  @override
  Widget build(BuildContext context) {
    return Text(myText!,
        style: themeData.textTheme.bodyText1,
        overflow: TextOverflow.ellipsis,
    );
  }
}