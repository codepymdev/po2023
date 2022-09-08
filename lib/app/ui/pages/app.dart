import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:po2023/app/bindings/dashboard_binding.dart';
import 'package:po2023/app/core/constants/app_constants.dart';
import 'package:po2023/app/routes/app_pages.dart';
import 'package:po2023/app/routes/app_routes.dart';
import 'dart:ui';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double? screenWidth = window.physicalSize.width;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.light,
        statusBarColor: primaryColor,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.dark,
      ),
      child: GetMaterialApp(
        getPages: AppPages.pages,
        initialRoute: Routes.initial,
        initialBinding: DashboardBinding(),
        theme: Theme.of(context).copyWith(
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: primaryColor,
              ),
          textTheme: screenWidth < 500 ? textThemeSmall : textThemeDefault,
        ),
        title: 'PO2023',
      ),
    );
  }
}
