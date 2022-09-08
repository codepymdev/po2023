import 'package:flutter/material.dart';

class ConnectivityError extends StatelessWidget {
  const ConnectivityError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 20,
                ),
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Oops!! No connection. Please connect to the internet and try agin",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
