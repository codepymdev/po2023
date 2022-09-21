import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:po2023/app/core/constants/api_constants.dart';

class AuthRepository {
  static var client = http.Client();

  static Future<Map<String, dynamic>> adminLogin(email, password) async {
    var headers = {
      'Content-Type': 'text/plain',
    };

    var request = http.Request('POST', Uri.parse('$endpoint/auth/login_admin'));
    request.body = json.encode({"email": email, "password": password});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      //return {success and token}
    } else {
      print(response.reasonPhrase);
      //return {"failed", and message}
    }

    return {"status": "failed", "message": "bad"};
  }
}
