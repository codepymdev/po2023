import 'package:http/http.dart' as http;

class AuthRepository {
  static var client = http.Client();

  static Future<Map<String, dynamic>> login(Map<String, dynamic> data) async {
    return {};
  }
}
