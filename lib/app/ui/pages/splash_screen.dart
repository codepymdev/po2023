import 'package:flutter/material.dart';
import 'package:po2023/app/ui/widgets/custom/ios_loader.dart';

class AppSplashScreen extends StatelessWidget {
  const AppSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/splash-img.png",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
