import 'package:get/get.dart';
import 'package:po2023/app/data/mixins/cache_manager.dart';
import 'package:po2023/app/data/repository/auth_repository.dart';

class AuthController extends GetxController with CacheManager {
  var loading = false.obs;
  var isLogin = false.obs;

  var error = false.obs;
  var success = false.obs;
  var errormsg = "".obs;
  var successmsg = "".obs;

  var redirect = false.obs;

  void checkAuthStatus() async {
    loading.value = true;
    String? status = getToken();
    if (status != null) {
      isLogin.value = true;
    }
    loading.value = false;
  }

  void login(Map<String, dynamic> data) async {
    isLogin.value = true;
    //Token is cached
    await saveToken(data['data']['token']);
  }

  Future<void> loginAdmin({required email, required password}) async {
    clear();
    if (!validateAdminLogin(email, password)) return;

    loading.value = true;
    Map<String, dynamic> result =
        await AuthRepository.adminLogin(email, password);
    if (result['status'] == "success") {
      redirect.value = true;
    } else {
      error.value = true;
      errormsg.value = result['message'];
    }

    loading.value = false;
  }

  bool validateAdminLogin(email, password) {
    if (email == "") {
      error.value = true;
      errormsg.value = "Email Address is required";
      return false;
    }

    if (password == "") {
      error.value = true;
      errormsg.value = "Password is required";
      return false;
    }
    return true;
  }

  void clear() {
    error.value = false;
    errormsg.value = "";
    success.value = false;
    successmsg.value = "";
  }
}
