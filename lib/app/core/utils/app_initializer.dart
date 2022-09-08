import 'package:po2023/app/core/utils/app_connectivity.dart';

///
/// Appp initalizer
/// This check for internet connectiviity
/// on the user device
///

class AppInitializer {
  ///
  /// initialize the app
  /// check connectivity
  /// get theme
  /// check if first time coming to the app if so check if login
  ///
  ///
  Future<Map<String, dynamic>> appInitializer() async {
    /**
     * get Notification status
     */
    AppConnectivity appConnectivity = AppConnectivity();
    await appConnectivity.initConnectivity();
    bool connectivityStatus = appConnectivity.isOnline;

    //set delay
    await Future.delayed(const Duration(seconds: 5));

    Map<String, dynamic> data = {
      "connectivity_status": connectivityStatus,
    };
    return data;
  }
}
