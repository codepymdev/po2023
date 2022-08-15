import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:po2023/auth/welcome_screen.dart';
import 'package:po2023/widgets/marquee.dart';
import 'package:po2023/widgets/normal_text.dart';
import 'package:po2023/widgets/icon_button.dart';
import 'package:po2023/widgets/plain_button.dart';
import 'package:po2023/widgets/drop_down.dart';
import 'package:po2023/widgets/post_list.dart';
import 'package:po2023/utilities/constants.dart';
import 'package:po2023/dashboard/admin/agents.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Initial Selected Value

  double? edgePad = 10.0;
  double? topPad = 15.0;
  final _textFormKey = GlobalKey<FormBuilderState>();

  // List of items in our dropdown menu
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        // title: const Text('Home Dashboard'),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          margin: const EdgeInsets.only(
            left: 17,
            top: 17,
          ),
          child: Image.asset(
            Constants.assetsImagePath + "labour_party_vote.png",
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
                Constants.assetsImagePath + "menu.png",
                width: 31,
                height: 31,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            marqueeContainer(
              size: size,
              themeData: themeData,
            ),
            SizedBox(
              height: Constants.smallPadValue,
            ),
            Padding(
              padding: Constants.sidePad,
              child: postContainer(
                size: size,
                themeData: themeData,
                context: context
              ),
            ),
            SizedBox(
              height: Constants.smallPadValue,
            ),
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
      ),
    );
  }

  Container locationContainer(
      {required Size size, required ThemeData themeData}) {
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
            child: Text(
              'View Result',
              style: themeData.textTheme.button!,
            ),
          ),
          const Spacer(),
          DropDownWidget(themeData: themeData),
        ],
      ),
    );
  }

  Container marqueeContainer(
      {required Size size, required ThemeData themeData}) {
    return Container(
      height: size.height * 0.08,
      color: colorGrey,
      child: Column(
        children: [
          SizedBox(
            height: Constants.smallPadValue,
          ),
          Expanded(
            child: MarqueeWidget(
                themeData: themeData,
                news: 'Some sample text that takes some space.'),
          ),
        ],
      ),
    );
  }

  Row postButtonRow({required ThemeData themeData, required BuildContext context}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconUserButton(
          themeData: themeData,
          buttonIcon: Icons.image_outlined,
          iconColor: primaryColorGreen,
          buttonText: 'photo',
          buttonEvent: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const WelcomeScreenAuth()));
          },
        ),
        SizedBox(
          width: Constants.smallPadValue,
        ),
        IconUserButton(
          themeData: themeData,
          buttonIcon: Icons.video_camera_back_outlined,
          iconColor: colorRed,
          buttonText: 'video',
          buttonEvent: () {},
        ),
        const Spacer(),
        PlainButton(
          textStyle: themeData.textTheme.bodyText2!,
          borderRadius: BorderRadius.circular(5),
          text: 'Post',
          buttonEvent: () {
            createAlertDialog(themeData, context);
          },
        ),
      ],
    );
  }

  Container postContainer({required Size size, required ThemeData themeData, required BuildContext context}) {
    return Container(
        height: size.height * 0.12,
        color: colorGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Constants.basePadValue,
            ),
            Padding(
              padding: Constants.sidePad,
              child: NormalText(
                  themeData: themeData,
                  myText: 'What is happening in your polling unit?'),
            ),
            SizedBox(
              height: Constants.basePadValue,
            ),
            Padding(
              padding: Constants.sidePad,
              child: postButtonRow(themeData: themeData, context: context),
            ),
          ],
        ));
  }

  createAlertDialog(ThemeData themeData, BuildContext context){
    // final ThemeData themeData = Theme.of(context);
    EdgeInsets sidePad = EdgeInsets.symmetric(horizontal: 2);
    double pad = 28;
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context){
          return AlertDialog(
            backgroundColor: primaryColorGreen,
            // title: Text(dialogHeaderTxt, style: themeData.textTheme.labelMedium,),
            content: FormBuilder(
              key: _textFormKey,
              child: textInput(themeData, sidePad, fieldName: 'fText',),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                      color: colorWhite,
                      child: Text("Cancel", style: cancelTextStyle,),
                      onPressed: (){
                        Navigator.of(context).pop();
                      }
                  ),
                  SizedBox(width: Constants.mediumPadValue,),
                  MaterialButton(
                      color: colorWhite,
                      child: Text("Post", style: okTextStyle,),
                      onPressed: (){
                        // validateForm(dialogFormKey, context,
                        // );
                        // Navigator.of(context).pop();
                      }
                  ),
                ],
              ),
            ],
          );
        });
  }

  Padding textInput(ThemeData themeData, EdgeInsets sidePad,
      {required String fieldName,}) {
    // bool isEmail(String input) => EmailValidator.validate(input);
    return Padding(
      padding: sidePad,
      child: FormBuilderTextField(
        name: fieldName,
        style: themeData.textTheme.bodyText2,
        keyboardType: TextInputType.emailAddress,
        cursorColor: colorGrey,

        decoration: InputDecoration(
            labelText: 'Enter email or phone number',
            // fillColor: colorWhite,
            // filled: true,
            labelStyle: themeData.textTheme.bodyText2,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: colorGrey),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: colorWhite),
              borderRadius: BorderRadius.circular(15),
            ),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: colorRed, width: 2)),
        ),
        // validator: (value) {
        //   String? msg = "";
        //   if (validatorTxt == "CheckEmail") {
        //     if(value!.isEmpty || !isEmail(value)){
        //       msg = "Invalid email address";
        //       return msg;
        //     }
        //   }else{
        //     if(value!.isEmpty || value.length < 6){
        //       msg = "Enter at least 6 characters";
        //       return msg;
        //     }
        //   }
        // },
        // autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }
}
