import 'package:flutter/material.dart';
import 'package:po2023/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'PO2023 Smart App',
      home: SplashScreen(),
    );
  }
}
