import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class StepTwo extends StatelessWidget {
  const StepTwo({
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
              hintText: 'Polling Unit ID',
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
              hintText: 'Polling Unit address',
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
              hintText: 'LGA',
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
              hintText: 'State',
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
