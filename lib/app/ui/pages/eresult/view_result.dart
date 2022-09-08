import 'package:flutter/material.dart';

import 'package:pie_chart/pie_chart.dart';

class ViewResultScreen extends StatefulWidget {
  const ViewResultScreen({Key? key}) : super(key: key);
  @override
  _ViewResultScreenState createState() => _ViewResultScreenState();
}

class _ViewResultScreenState extends State<ViewResultScreen> {
  @override
  void initState() {
    super.initState();
    calG(60, 25, 12, 3);
  }

  var lp = 0.0;
  var pdp = 0.0;
  var sdp = 0.0;
  var apc = 0.0;

  var full = 0.04;
  late var per = 25;

  Map<String, double> dataMap = {"LP": 60, "PDP": 25, "APC": 3, "SDP": 12};

  final gradientListP = <List<Color>>[
    [
      const Color.fromRGBO(195, 173, 153, 0.15),
      const Color.fromRGBO(195, 173, 153, 0.15),
    ],
    [
      const Color.fromRGBO(195, 173, 153, 0.15),
      const Color.fromRGBO(195, 173, 153, 0.15),
    ],
    [
      const Color.fromRGBO(195, 173, 153, 0.15),
      const Color.fromRGBO(195, 173, 153, 0.15),
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  child: InkWell(
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Color(0xffD40702),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(3.0),
                            bottomRight: Radius.circular(80.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width / 20,
                          ),
                          child: const Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.white,
                            size: 29.0,
                          ),
                        )),
                    onTap: () {},
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 20,
                right: MediaQuery.of(context).size.width / 20,
                bottom: MediaQuery.of(context).size.height / 40,
                top: MediaQuery.of(context).size.height / 20,
              ),
              child: Column(
                children: [
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("VIEW RESULT",
                          style: TextStyle(
                              color: Color(0xff01B834), fontSize: 24))),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Result as provided by Polling agent",
                          style: TextStyle(
                              color: Color(0xff3F3D56), fontSize: 12))),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 40,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffCCCCCC),
                            ),
                            color: const Color(0xffCCCCCC),
                            shape: BoxShape.circle,
                          ),
                          child: Container(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 40,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 40,
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      color: const Color(0xffE6E6E6),
                                      width: MediaQuery.of(context).size.width /
                                          1.4,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              20,
                                    ),
                                    Container(
                                      color: const Color(0xff01B834),
                                      width: MediaQuery.of(context).size.width *
                                          pdp, // here you can define your percentage of progress, 0.2 = 20%, 0.3 = 30 % .....
                                      height:
                                          MediaQuery.of(context).size.height /
                                              20,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width /
                                                20,
                                        top:
                                            MediaQuery.of(context).size.height /
                                                90,
                                      ),
                                      child: const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text("25%",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight:
                                                      FontWeight.w700))),
                                    ),
                                  ],
                                ),
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "PDP",
                                  style: TextStyle(
                                      color: Color(0xff3F3D56),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 40,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffCCCCCC),
                            ),
                            color: const Color(0xffCCCCCC),
                            shape: BoxShape.circle,
                          ),
                          child: Container(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 40,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 40,
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      color: const Color(0xffE6E6E6),
                                      width: MediaQuery.of(context).size.width /
                                          1.4,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              20,
                                    ),
                                    Container(
                                      color: const Color(0xff01B834),
                                      width: MediaQuery.of(context).size.width *
                                          lp, // here you can define your percentage of progress, 0.2 = 20%, 0.3 = 30 % .....
                                      height:
                                          MediaQuery.of(context).size.height /
                                              20,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width /
                                                20,
                                        top:
                                            MediaQuery.of(context).size.height /
                                                90,
                                      ),
                                      child: const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text("60%",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight:
                                                      FontWeight.w700))),
                                    ),
                                  ],
                                ),
                              ),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("LP",
                                      style: TextStyle(
                                          color: Color(0xff3F3D56),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 40,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffCCCCCC),
                            ),
                            color: const Color(0xffCCCCCC),
                            shape: BoxShape.circle,
                          ),
                          child: Container(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 40,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 40,
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      color: const Color(0xffE6E6E6),
                                      width: MediaQuery.of(context).size.width /
                                          1.4,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              20,
                                    ),
                                    Container(
                                      color: const Color(0xff01B834),
                                      width: MediaQuery.of(context).size.width *
                                          apc, // here you can define your percentage of progress, 0.2 = 20%, 0.3 = 30 % .....
                                      height:
                                          MediaQuery.of(context).size.height /
                                              20,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width /
                                                20,
                                        top:
                                            MediaQuery.of(context).size.height /
                                                90,
                                      ),
                                      child: const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "3%",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "APC",
                                  style: TextStyle(
                                      color: Color(0xff3F3D56),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 40,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffCCCCCC),
                            ),
                            color: const Color(0xffCCCCCC),
                            shape: BoxShape.circle,
                          ),
                          child: Container(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 40,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height / 40,
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      color: const Color(0xffE6E6E6),
                                      width: MediaQuery.of(context).size.width /
                                          1.4,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              20,
                                    ),
                                    Container(
                                      color: const Color(0xff01B834),
                                      width: MediaQuery.of(context).size.width *
                                          sdp, // here you can define your percentage of progress, 0.2 = 20%, 0.3 = 30 % .....
                                      height:
                                          MediaQuery.of(context).size.height /
                                              20,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width /
                                                20,
                                        top:
                                            MediaQuery.of(context).size.height /
                                                90,
                                      ),
                                      child: const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "12%",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "SDP",
                                  style: TextStyle(
                                      color: Color(0xff3F3D56),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Color(0xffDBDBDB),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 20,
                right: MediaQuery.of(context).size.width / 20,
                bottom: MediaQuery.of(context).size.height / 40,
                top: MediaQuery.of(context).size.height / 50,
              ),
              child: Column(
                children: [
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("NATIONWIDE",
                          style: TextStyle(
                              color: Color(0xff01B834), fontSize: 24))),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Result as provided by Polling agent",
                          style: TextStyle(
                              color: Color(0xff3F3D56), fontSize: 12))),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 50,
                    ),
                    child: PieChart(
                      dataMap: dataMap,
                      chartRadius: MediaQuery.of(context).size.width / 1.7,
                      chartValuesOptions: const ChartValuesOptions(
                        showChartValuesInPercentage: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void calG(lpP, pdpP, sdpP, apcP) {
    var full = 0.6;

    var lpC = lpP / 100;
    var pdpC = pdpP / 100;
    var sdpC = sdpP / 100;
    var apcC = apcP / 100;

    setState(() {
      lp = lpC * full;
      pdp = pdpC * full;
      sdp = sdpC * full;
      apc = apcC * full;
    });

    debugPrint(pdp.toString());
  }
}
