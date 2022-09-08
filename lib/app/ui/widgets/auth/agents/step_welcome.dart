import 'package:flutter/material.dart';
import 'package:po2023/app/core/constants/app_constants.dart';

class StepWelcome extends StatelessWidget {
  const StepWelcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/signup_agent.png",
        ),
        Container(
          margin: const EdgeInsets.only(top: 27),
          child: const Text(
            "{full name}",
            style: TextStyle(
              fontSize: 40,
              color: primaryColor,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 18,
            bottom: 95,
          ),
          child: const Text(
            "we're happy to have you",
            style: TextStyle(
              fontSize: 12,
              color: primaryColor,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}
