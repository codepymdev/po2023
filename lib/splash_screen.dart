import 'package:flutter/material.dart';
import 'package:po2023/auth/agent/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Screen'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AgentLoginup(),
            ),
          );
        },
        child: const Center(
          child: Text('Splash Screen'),
        ),
      ),
    );
  }
}
