import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class StepOne extends StatelessWidget {
  final TextEditingController fullnamecontroller;
  final TextEditingController emailcontroller;
  final TextEditingController phonenumcontroller;
  final TextEditingController agentidcontroller;
  const StepOne({
    Key? key,
    required this.fullnamecontroller,
    required this.emailcontroller,
    required this.phonenumcontroller,
    required this.agentidcontroller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 55,
          child: TextField(
            controller: fullnamecontroller,
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
            controller: emailcontroller,
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
            controller: phonenumcontroller,
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
            controller: agentidcontroller,
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
