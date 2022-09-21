import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:po2023/app/core/constants/app_constants.dart';
import 'package:po2023/app/core/constants/asset_path.dart';
import 'package:po2023/app/notification/helpernotification.dart';

import 'package:po2023/app/ui/pages/auth/welcome_screen.dart';
import 'package:po2023/app/ui/pages/dashboard/admin/agents.dart';
import 'package:po2023/app/ui/pages/dashboard/menu.dart';
import 'package:po2023/app/ui/widgets/custom/drop_down.dart';
import 'package:po2023/app/ui/widgets/custom/icon_button.dart';
import 'package:po2023/app/ui/widgets/custom/marquee.dart';
import 'package:po2023/app/ui/widgets/custom/normal_text.dart';
import 'package:po2023/app/ui/widgets/custom/plain_button.dart';
import 'package:po2023/app/ui/widgets/custom/post_list.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // Initial Selected Value

  double edgePad = 10.0;

  final _textFormKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();

    ///notification reques, get device token and initiate info
    HelperNotification().requestPermission();
    HelperNotification().getToken();
    HelperNotification().initInfo();
  }

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
            labourParty,
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
              child: GestureDetector(
                onTap: () => Get.to(
                  () => const DashboardSignIn(),
                ),
                child: Image.asset(
                  menuPng,
                  width: 31,
                  height: 31,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ClampingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            marqueeContainer(
              size: size,
              themeData: themeData,
            ),
            const SizedBox(
              height: smallPadValue,
            ),
            Padding(
              padding: sidePad,
              child: postContainer(
                  size: size, themeData: themeData, context: context),
            ),
            const SizedBox(
              height: smallPadValue,
            ),
            Padding(
              padding: sidePad,
              child: locationContainer(
                size: size,
                themeData: themeData,
              ),
            ),
            Container(
              margin: topPad,
              height: size.height * 0.51,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const ClampingScrollPhysics(),
                child: SizedBox(
                  height: size.height * 0.51,
                  child: const PostList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget locationContainer({required Size size, required ThemeData themeData}) {
    return SizedBox(
      height: size.height * 0.06,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.06,
            width: size.width * 0.40,
            padding: EdgeInsets.only(left: edgePad, top: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: primaryColor,
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
          const SizedBox(
            height: smallPadValue,
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

  Row postButtonRow(
      {required ThemeData themeData, required BuildContext context}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconUserButton(
          themeData: themeData,
          buttonIcon: Icons.image_outlined,
          iconColor: primaryColor,
          buttonText: 'photo',
          buttonEvent: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const WelcomeScreenAuth()));
          },
        ),
        const SizedBox(
          width: smallPadValue,
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

  Container postContainer(
      {required Size size,
      required ThemeData themeData,
      required BuildContext context}) {
    return Container(
        height: size.height * 0.12,
        color: colorGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: basePadValue,
            ),
            Padding(
              padding: sidePad,
              child: NormalText(
                  themeData: themeData,
                  myText: 'What is happening in your polling unit?'),
            ),
            const SizedBox(
              height: basePadValue,
            ),
            Padding(
              padding: sidePad,
              child: postButtonRow(themeData: themeData, context: context),
            ),
          ],
        ));
  }

  createAlertDialog(ThemeData themeData, BuildContext context) {
    // final ThemeData themeData = Theme.of(context);
    EdgeInsets sidePad = const EdgeInsets.symmetric(horizontal: 2);

    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            backgroundColor: primaryColor,
            // title: Text(dialogHeaderTxt, style: themeData.textTheme.labelMedium,),
            content: FormBuilder(
              key: _textFormKey,
              child: textInput(
                themeData,
                sidePad,
                fieldName: 'fText',
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                      color: colorWhite,
                      child: const Text(
                        "Cancel",
                        style: cancelTextStyle,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                  const SizedBox(
                    width: mediumPadValue,
                  ),
                  MaterialButton(
                      color: colorWhite,
                      child: const Text(
                        "Post",
                        style: okTextStyle,
                      ),
                      onPressed: () {
                        // validateForm(dialogFormKey, context,
                        // );
                        // Navigator.of(context).pop();
                      }),
                ],
              ),
            ],
          );
        });
  }

  Padding textInput(
    ThemeData themeData,
    EdgeInsets sidePad, {
    required String fieldName,
  }) {
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
          errorBorder: const OutlineInputBorder(
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
