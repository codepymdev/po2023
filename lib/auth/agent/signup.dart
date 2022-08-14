import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:po2023/auth/agent/login.dart';
import 'package:po2023/constants/variables.dart';

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
                  style: TextStyle(
                    color: HexColor(primaryColor),
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
                      child: Text(
                        "we’re happy to have you!",
                        style: TextStyle(
                          color: HexColor(primaryColor),
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
                            primary: HexColor(primaryColor)),
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
          child: Text(
            "{full name}",
            style: TextStyle(
              fontSize: 40,
              color: HexColor(primaryColor),
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 18,
            bottom: 95,
          ),
          child: Text(
            "we're happy to have you",
            style: TextStyle(
              fontSize: 12,
              color: HexColor(primaryColor),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}
