import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:po2023/home.dart';
import 'package:po2023/utilities/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double? screenWidth = window.physicalSize.width;

    return MaterialApp(
      theme: Theme.of(context).copyWith(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: primaryColorGreen,
            ),
        textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
      ),
      title: 'PO2023 Smart App',
      home: const HomePage(),
    );
  }
}
