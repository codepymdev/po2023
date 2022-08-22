import 'package:flutter/material.dart';
import 'package:po2023/home.dart';
import 'package:po2023/utilities/constants.dart';

import '../widgets/bold_text.dart';
import '../widgets/normal_text.dart';

class DashboardSignIn extends StatefulWidget {

  DashboardSignIn({Key? key}) : super(key: key);
  @override
  _DashboardSignInScreenState createState() => _DashboardSignInScreenState();
}

class _DashboardSignInScreenState extends State<DashboardSignIn> {
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    ThemeData themeData = Theme.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 17,
                top: 17,
              ),
              child: Image.asset(
                Constants.assetsImagePath + "labour_party_vote.png",
                width: 44,
                height: 25,
              ),
            ),
            Spacer(),
            GestureDetector(
              child: InkWell(

                child: Container(
                    height: MediaQuery.of(context).size.height * 0.40,
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: BoxDecoration(
                      color: colorGreenShadow5,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(80.0),
                        bottomLeft: Radius.circular(600.0),

                      ),
                    ),

                    child:Padding(
                      padding: Constants.sideTopPad,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.cancel_outlined,
                            color: primaryColorGreen,
                            size:29.0,
                          ),
                          SizedBox(height: Constants.smallPadValue,),
                          NormalText(myText: 'View Result', themeData: themeData),
                          SizedBox(height: Constants.smallPadValue,),
                          BoldText(myText: 'Sign In', themeData: themeData,),
                          SizedBox(height: Constants.smallPadValue,),
                          BoldText(myText: 'Sign Up', themeData: themeData,),
                        ],
                      ),
                    )
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          color: primaryColorGreen,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(3.0),
            topRight: Radius.circular(600.0),

          ),
        ),
        // child: RaisedButton(
        //   child: Text('PROCEED'),
        //   onPressed: () {},
        // ),
      ),
    );
  }

}