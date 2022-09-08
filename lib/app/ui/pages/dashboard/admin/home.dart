import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:po2023/app/ui/pages/dashboard/admin/admin_view_result.dart';
import 'package:po2023/app/ui/pages/dashboard/admin/agents.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          margin: const EdgeInsets.only(
            left: 17,
            top: 17,
          ),
          child: Image.asset(
            "assets/images/labour_party_vote.png",
            width: 54,
            height: 35,
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
              margin: const EdgeInsets.only(
                right: 17,
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
          children: [
            Container(
              color: HexColor("#D9D9D9"),
              height: 55,
              margin: const EdgeInsets.only(
                top: 17,
                bottom: 17,
              ),
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        left: index == 0 ? 0 : 20,
                      ),
                      child: Text(
                        "OSUN: LP - 300,000",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: HexColor("#018225"),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(children: [
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
                      Text("States"),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.white,
                      )
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
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4),
                      bottomLeft: Radius.circular(4),
                    ),
                    border: Border.all(
                      color: HexColor("#018225"),
                      width: 1,
                    ),
                    color: Colors.green[50],
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Sort by: Highest",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.green,
                      )
                    ],
                  ),
                ),
              ),
            ]),
            const Divider(),
            Container(
              padding: const EdgeInsets.only(
                top: 17,
                bottom: 17,
                left: 10,
                right: 10,
              ),
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 20,
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
                          flex: 3,
                          child: Text(
                            "Abia State",
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
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const AdminViewResult(),
                                  ),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: HexColor("#018225"),
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  "view",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: HexColor("#018225"),
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
