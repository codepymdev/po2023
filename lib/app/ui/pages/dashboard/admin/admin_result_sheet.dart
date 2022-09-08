import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:po2023/app/ui/pages/dashboard/admin/agents.dart';

class AdminResultSheet extends StatelessWidget {
  const AdminResultSheet({Key? key}) : super(key: key);

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
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Agents(),
                ),
              );
            },
            child: Container(
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
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 17,
              top: 10,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "RESULT SHEET",
                style: TextStyle(
                  fontSize: 20,
                  color: HexColor("#01681E"),
                  fontWeight: FontWeight.w300,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 7,
                ),
                child: Text(
                  "As provided by party agent by ward",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: HexColor("#000000"),
                  ),
                ),
              ),
            ]),
          ),
          Container(
            margin: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: HexColor("#D9D9D9"),
              borderRadius: BorderRadius.circular(8),
            ),
            width: 382,
            height: 340,
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 17,
              bottom: 17,
              left: 10,
              right: 10,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(
                    2,
                  ),
                  child: Row(
                    children: const [
                      Expanded(
                        flex: 3,
                        child: Text(
                          "LGA",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          "Polling unit ID",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Total Votes",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          "Result sheet",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 1,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.all(
                        2,
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
                            flex: 2,
                            child: Text(
                              "Bwari",
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
                              "700,000",
                              style: TextStyle(
                                color: HexColor("#018225"),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "700,000",
                              style: TextStyle(
                                color: HexColor("#018225"),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const AdminResultSheet(),
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      "assets/images/icons/image.png",
                                      width: 20,
                                    ),
                                  ),
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
              ],
            ),
          )
        ],
      )),
    );
  }
}
