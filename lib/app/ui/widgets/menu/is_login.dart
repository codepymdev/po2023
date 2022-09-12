import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:po2023/app/core/constants/app_constants.dart';
import 'package:po2023/app/ui/widgets/custom/bold_text.dart';
import 'package:po2023/app/ui/widgets/custom/normal_text.dart';

class IsAuth extends StatelessWidget {
  const IsAuth({
    Key? key,
    required this.themeData,
  }) : super(key: key);

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.40,
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: const BoxDecoration(
          color: colorGreenShadow5,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(80.0),
            bottomLeft: Radius.circular(600.0),
          ),
        ),
        child: Padding(
          padding: sideTopPad,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.cancel_outlined,
                color: primaryColor,
                size: 29.0,
              ),
              const SizedBox(
                height: smallPadValue,
              ),
              NormalText(
                myText: 'View Result',
                themeData: themeData,
              ),
              const SizedBox(
                height: smallPadValue,
              ),
              NormalText(
                myText: 'Upload Result',
                themeData: themeData,
              ),
              const SizedBox(
                height: smallPadValue,
              ),
              BoldText(
                myText: 'Logout',
                themeData: themeData,
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Get.toNamed("/dashboard");
      },
    );
  }
}
