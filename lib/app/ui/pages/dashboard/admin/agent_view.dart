import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AgentView extends StatelessWidget {
  const AgentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#ffffff"),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 80.0, // double
        automaticallyImplyLeading: false, // hides back button
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              color: HexColor("#D40702"),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
                topRight: Radius.circular(5),
              ),
            ),
            padding: const EdgeInsets.only(
              right: 30,
            ),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 35,
            ),
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.green[50],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
                topLeft: Radius.circular(5),
              ),
            ),
            padding: const EdgeInsets.only(
              right: 30,
              left: 30,
            ),
            child: Image.asset(
              "assets/images/menu.png",
              width: 31,
              height: 31,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 26,
              ),
              width: 200,
              height: 180,
              decoration: BoxDecoration(
                color: HexColor("#018225"),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Image.asset("assets/images/user.png"),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 26,
                top: 23,
                right: 20,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Name",
                          style: TextStyle(
                            color: HexColor("#018225"),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Johnson Ahmed",
                          style: TextStyle(
                            color: HexColor("#018225"),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: HexColor("#018225"),
                    thickness: 0.5,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Phone number:",
                          style: TextStyle(
                            color: HexColor("#018225"),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "+234987654321",
                          style: TextStyle(
                            color: HexColor("#018225"),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: HexColor("#018225"),
                    thickness: 0.5,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Email:",
                          style: TextStyle(
                            color: HexColor("#018225"),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "JohnsonAhmed@gmail.com",
                          style: TextStyle(
                            color: HexColor("#018225"),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: HexColor("#018225"),
                    thickness: 0.5,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Agent ID:",
                          style: TextStyle(
                            color: HexColor("#018225"),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "lp_033",
                          style: TextStyle(
                            color: HexColor("#018225"),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: HexColor("#018225"),
                    thickness: 0.5,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Polling unit ID:",
                          style: TextStyle(
                            color: HexColor("#018225"),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "09393",
                          style: TextStyle(
                            color: HexColor("#018225"),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: HexColor("#018225"),
                    thickness: 0.5,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Polling unit address:",
                          style: TextStyle(
                            color: HexColor("#018225"),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Usman dam ",
                          style: TextStyle(
                            color: HexColor("#018225"),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: HexColor("#018225"),
                    thickness: 0.5,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          "LGA:",
                          style: TextStyle(
                            color: HexColor("#018225"),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Bwari ",
                          style: TextStyle(
                            color: HexColor("#018225"),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: HexColor("#018225"),
                    thickness: 0.5,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          "State:",
                          style: TextStyle(
                            color: HexColor("#018225"),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "FCT",
                          style: TextStyle(
                            color: HexColor("#018225"),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: HexColor("#018225"),
                    thickness: 0.5,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                top: 17,
                right: 10,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          HexColor("#D40702"),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Delete User",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          HexColor("#018225"),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          // Icon(
                          //   Icons.phone,
                          //   color: Colors.white,
                          // ),
                          Text(
                            "Call user",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          HexColor("#018225"),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          // Icon(
                          //   Icons.chat_bubble_outline,
                          //   color: Colors.white,
                          // ),
                          Text(
                            "Send SMS",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          HexColor("#018225"),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          // Icon(
                          //   Icons.mail,
                          //   color: Colors.white,
                          // ),
                          Text(
                            "Email user",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                      color: HexColor("#018225"),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Uploaded data"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
              ],
            ),
            const Divider(),
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                top: 5,
                right: 10,
                bottom: 20,
              ),
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.all(
                      1,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            "$index.",
                            style: TextStyle(
                              fontSize: 14,
                              color: HexColor("#018225"),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "LP",
                            style: TextStyle(
                              fontSize: 14,
                              color: HexColor("#018225"),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            "@lp_033",
                            style: TextStyle(
                              color: HexColor("#018225"),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    "assets/images/icons/edit.png",
                                    width: 20,
                                  ),
                                ),
                                Expanded(
                                  child: Image.asset(
                                    "assets/images/icons/trash.png",
                                    width: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
