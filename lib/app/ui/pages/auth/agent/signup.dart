import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:po2023/app/core/constants/app_constants.dart';
import 'package:po2023/app/ui/pages/auth/agent/login.dart';
import 'package:po2023/app/ui/widgets/auth/agents/step_one.dart';
import 'package:po2023/app/ui/widgets/auth/agents/step_three.dart';
import 'package:po2023/app/ui/widgets/auth/agents/step_two.dart';
import 'package:po2023/app/ui/widgets/auth/agents/step_welcome.dart';

class AgentSignup extends StatefulWidget {
  const AgentSignup({Key? key}) : super(key: key);

  @override
  State<AgentSignup> createState() => _AgentSignupState();
}

class _AgentSignupState extends State<AgentSignup> {
  late int steps;
  @override
  void initState() {
    steps = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(
            top: 84,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  steps == 4 ? "WELCOME AGENT OF CHANGE" : "PARTY AGENT",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: primaryColor,
                    fontSize: 40,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              steps < 4
                  ? Container(
                      margin: const EdgeInsets.only(
                        top: 11,
                      ),
                      child: const Text(
                        "we’re happy to have you!",
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      ),
                    )
                  : Container(),
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40, top: 55),
                child: Column(
                  children: [
                    steps == 1
                        ? const StepOne()
                        : steps == 2
                            ? const StepTwo()
                            : steps == 3
                                ? const StepThree()
                                : const StepWelcome(),
                    SizedBox(
                      width: 242,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          primary: primaryColor,
                        ),
                        onPressed: () {
                          setState(() {
                            if (steps <= 4) {
                              steps += 1;
                            }
                          });
                        },
                        child: Text(
                          steps == 4 ? "DASHBOARD" : "NEXT",
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 28,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.circle,
                            size: 12,
                            color: HexColor('#01B834'),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Icon(
                            Icons.circle,
                            size: 12,
                            color: steps >= 2
                                ? HexColor('#01B834')
                                : HexColor('#D9D9D9'),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Icon(
                            Icons.circle,
                            size: 12,
                            color: steps >= 3
                                ? HexColor('#01B834')
                                : HexColor('#D9D9D9'),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AgentLoginup(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        margin: const EdgeInsets.only(
                          top: 17,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account?",
                              style: TextStyle(
                                color: Color.fromARGB(255, 43, 42, 42),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Sign in here",
                              style: TextStyle(color: HexColor("#D40702")),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
