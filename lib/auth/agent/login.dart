import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:po2023/auth/agent/signup.dart';
import 'package:po2023/constants/variables.dart';

class AgentLoginup extends StatelessWidget {
  const AgentLoginup({Key? key}) : super(key: key);

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
              Text(
                "PARTY AGENT",
                style: TextStyle(
                  color: HexColor(primaryColor),
                  fontSize: 40,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 11,
                ),
                child: Text(
                  "*if you are not a party agent don’t bother",
                  style: TextStyle(
                    color: HexColor(primaryColor),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 49,
                ),
                child: Image.asset(
                  "assets/images/auth-image.png",
                  width: 302,
                  height: 248,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40, top: 28),
                child: Column(
                  children: [
                    SizedBox(
                      height: 55,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: HexColor("#F6F3F0"),
                          filled: true,
                          hintText: 'Enter your phone number or email',
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
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: HexColor("#01B834"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 242,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            primary: HexColor(primaryColor)),
                        onPressed: () {},
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
            ],
          ),
        ),
      ),
    );
  }
}
