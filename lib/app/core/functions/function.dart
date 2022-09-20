import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

double getScreenPercentSize(BuildContext context, double percent) {
  return (MediaQuery.of(context).size.height * percent) / 100;
}

double getWidthPercentSize(BuildContext context, double percent) {
  return (MediaQuery.of(context).size.width * percent) / 100;
}

extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF $hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

///
/// Redirect after login
///
Future<void> adminLoginSuccess() async {
  Future.delayed(const Duration(seconds: 1), () {
    Get.offAllNamed("/admin/account");
  });
}

Future<bool> saveLocation(Map<String, dynamic>? location) async {
  final box = GetStorage();
  await box.write("croods", location);
  return true;
}
