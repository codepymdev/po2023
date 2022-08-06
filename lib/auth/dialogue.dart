import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:po2023/auth/admin/login.dart';
import 'package:po2023/auth/agent/login.dart';

import '../constants/variables.dart';

class Dialogue extends StatelessWidget {
  const Dialogue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                height: 160,
                width: 300,
                margin: const EdgeInsets.only(top: 1),
                child: Card(
                  color: HexColor(primaryColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "PARTY AGENT",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        "*if you are not a party agent don’t select",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AdminLogin(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(
                  top: 79,
                ),
                height: 160,
                width: 300,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  color: HexColor("#D40702"),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "ADMIN",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "*if you are not a admin don’t select",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
