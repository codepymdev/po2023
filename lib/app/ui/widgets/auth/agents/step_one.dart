import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class StepOne extends StatelessWidget {
  const StepOne({
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
              hintText: 'Full Name',
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
              hintText: 'Enter Email',
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
              hintText: 'Enter Phone Number',
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
              hintText: 'Agent Id',
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
