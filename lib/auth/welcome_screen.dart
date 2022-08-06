import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:po2023/auth/agent/signup.dart';
import 'package:po2023/auth/dialogue.dart';
import 'package:po2023/constants/variables.dart';

class WelcomeScreenAuth extends StatelessWidget {
  const WelcomeScreenAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Image.asset(
                "assets/images/labour_party_vote.png",
                width: 300,
                height: 300,
              ),
              Container(
                width: 242,
                height: 55,
                margin: const EdgeInsets.only(
                  top: 181,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      primary: HexColor(primaryColor)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Dialogue(),
                      ),
                    );
                  },
                  child: const Text(
                    "SIGN IN",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AgentSignup(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                    top: 17,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account yet?",
                        style: TextStyle(
                          color: Color.fromARGB(255, 43, 42, 42),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Sign up here",
                        style: TextStyle(color: HexColor("#D40702")),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
