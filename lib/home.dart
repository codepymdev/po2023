import 'package:flutter/material.dart';
import 'package:po2023/widgets/marquee.dart';
import 'package:po2023/widgets/normal_text.dart';
import 'package:po2023/widgets/icon_button.dart';
import 'package:po2023/widgets/plain_button.dart';
import 'package:po2023/widgets/drop_down.dart';
import 'package:po2023/widgets/post_list.dart';
import 'package:po2023/utilities/constants.dart';
import 'package:po2023/auth/agent/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Initial Selected Value

  double? edgePad = 10.0;
  double? topPad = 15.0;

  // List of items in our dropdown menu
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        // title: const Text('Home Dashboard'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
                Constants.assetsImagePath + 'party-logo.png',
              height: Constants.getScreenPercentSize(context, 6.5),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          marqueeContainer(
            size: size,
            themeData: themeData,
          ),
          SizedBox(height: Constants.smallPadValue,),
         Padding(
            padding: Constants.sidePad,
            child: postContainer(
              size: size,
              themeData: themeData,
            ),
          ),
          SizedBox(height: Constants.smallPadValue,),
          Padding(
            padding: Constants.sidePad,
            child: locationContainer(
              size: size,
              themeData: themeData,
            ),
          ),

          Container(
            margin: Constants.topPad,
            height: size.height * 0.51,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: ClampingScrollPhysics(),
              child: Container(
                height: size.height * 0.51,
                child: PostList(),
              ),
            ),
          ),

        ],
      ),
    );
  }

  Container locationContainer({required Size size, required ThemeData themeData}){
    return Container(
      height: size.height * 0.06,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.06,
            width: size.width * 0.40,
            padding: EdgeInsets.only(left: edgePad!, top: topPad!),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: primaryColorGreen,
            ),
            child: Text('View Result', style: themeData.textTheme.button!,),
          ),

          const Spacer(),

          DropDownWidget(themeData: themeData),

        ],
      ),
    );
  }

  Container marqueeContainer({required Size size, required ThemeData themeData}){
    return Container(
      height: size.height * 0.08,
      color: colorGrey,
      child: Column(
        children: [
          SizedBox(height: Constants.smallPadValue,),
          Expanded(
            child: MarqueeWidget(
                themeData: themeData,
                news: 'Some sample text that takes some space.'
            ),
          ),
        ],
      ),
    );
  }

  Row postButtonRow({required ThemeData themeData}){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconUserButton(
          themeData: themeData,
          buttonIcon: Icons.image_outlined,
          iconColor: primaryColorGreen,
          buttonText: 'photo',
          buttonEvent: (){
            Navigator.push(context, new MaterialPageRoute(builder: (
                context) =>
            AgentLoginup()));
          },
        ),
        SizedBox(width: Constants.smallPadValue,),
        IconUserButton(
          themeData: themeData,
          buttonIcon: Icons.video_camera_back_outlined,
          iconColor: colorRed,
          buttonText: 'video',
          buttonEvent: (){},
        ),
        const Spacer(),
        PlainButton(
          textStyle: themeData.textTheme.bodyText2!,
          borderRadius: BorderRadius.circular(5),
          text: 'Post',
          buttonEvent: (){},
        ),
      ],
    );
  }

  Container postContainer({required Size size, required ThemeData themeData}){
    return Container(
        height: size.height * 0.12,
        color: colorGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Constants.basePadValue,),
            Padding(
              padding: Constants.sidePad,
              child: NormalText(
                  themeData: themeData,
                  myText: 'What is happening in your polling unit?'
              ),
            ),
            SizedBox(height: Constants.basePadValue,),
            Padding(
              padding: Constants.sidePad,
              child: postButtonRow(themeData: themeData),
            ),
          ],
        )
    );
  }


}
