import 'package:get/get.dart';

class AuthProvider extends GetConnect {
  Future<Response> postUser(Map data) => post(
        'http://youapi/users',
        {
          "contentType": "",
        },
      );
}
