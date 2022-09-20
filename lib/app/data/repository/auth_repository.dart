import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:po2023/app/core/constants/api_constants.dart';

class AuthRepository {
  static var client = http.Client();

  static Future<Map<String, dynamic>> adminLogin(
      String email, String password) async {
    try {
      var headers = {'Content-Type': 'application/json'};
      var request =
          http.Request('POST', Uri.parse('$endpoint/auth/login_admin'));
      request.body = json.encode({
        "email": email,
        "password": password,
      });
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var data = await response.stream.bytesToString();
        return json.decode(data);
      } else {
        return {"status": "failed", "message": "Authentication Failed"};
      }
    } catch (_) {
      return {"status": "failed", "message": "Authentication Failed"};
    }
  }
}
