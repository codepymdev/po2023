import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class StepThree extends StatelessWidget {
  const StepThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 55,
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: HexColor("#F6F3F0"),
              filled: true,
              hintText: 'Take photo',
              hintStyle: TextStyle(
                color: HexColor("#01B834"),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 55,
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: HexColor("#F6F3F0"),
              filled: true,
              hintText: 'Enter Password',
              hintStyle: TextStyle(
                color: HexColor("#01B834"),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 55,
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: HexColor("#F6F3F0"),
              filled: true,
              hintText: 'Re-enter your Password',
              hintStyle: TextStyle(
                color: HexColor("#01B834"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
