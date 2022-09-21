import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:po2023/app/core/utils/app_initializer.dart';

import 'package:po2023/app/ui/pages/app.dart';
import 'package:po2023/app/ui/pages/errors/connectivity_error.dart';
import 'package:po2023/app/ui/pages/errors/error.dart';
import 'package:po2023/app/ui/pages/splash_screen.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:po2023/firebase_options.dart';

Future<void> backgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> main() async {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseMessaging.instance.getInitialMessage();
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);

  FlutterNativeSplash.preserve(
      widgetsBinding: WidgetsFlutterBinding.ensureInitialized());
  runApp(
    FutureBuilder(
      future: AppInitializer().appInitializer(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const AppSplashScreen();
        } else if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            Map<String, dynamic> appInitData = snapshot.data;

            ///
            /// check if the connectivity status is === false
            ///
            bool connectivityStatus = appInitData['connectivity_status'];
            if (connectivityStatus) {
              return const App();
            } else {
              ///
              /// show the connectivity error page
              ///
              return const ConnectivityError();
            }
          } else {
            ///
            /// show the connectivity error page
            ///
            return const ErrorPage();
          }
        } else if (snapshot.hasError) {
          //return error state
          return const ErrorPage();
        } else {
          //return error state
          return const ErrorPage();
        }
      },
    ),
  );
  FlutterNativeSplash.remove();
}
