import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:po2023/app/core/functions/function.dart';
import 'package:po2023/app/core/utils/app_initializer.dart';
import 'package:po2023/app/ui/pages/app.dart';
import 'package:po2023/app/ui/pages/errors/connectivity_error.dart';
import 'package:po2023/app/ui/pages/errors/error.dart';
import 'package:po2023/app/ui/pages/splash_screen.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:location/location.dart';

Future<void> main() async {
  await GetStorage.init();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  Location location = Location();

  bool serviceEnabled;
  PermissionStatus permissionGranted;
  LocationData locationData;

  serviceEnabled = await location.serviceEnabled();
  if (!serviceEnabled) {
    serviceEnabled = await location.requestService();
    if (!serviceEnabled) {
      return;
    }
  }

  permissionGranted = await location.hasPermission();
  if (permissionGranted == PermissionStatus.denied) {
    permissionGranted = await location.requestPermission();
    if (permissionGranted != PermissionStatus.granted) {
      return;
    }
  }

  locationData = await location.getLocation();

  saveLocation({"lat": locationData.latitude, "lng": locationData.longitude});

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
