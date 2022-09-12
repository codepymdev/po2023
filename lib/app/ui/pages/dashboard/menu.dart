import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:po2023/app/controller/auth_controller.dart';
import 'package:po2023/app/core/constants/app_constants.dart';
import 'package:po2023/app/core/constants/asset_path.dart';
import 'package:po2023/app/ui/widgets/menu/is_login.dart';
import 'package:po2023/app/ui/widgets/menu/is_not_login.dart';

class DashboardSignIn extends StatefulWidget {
  const DashboardSignIn({Key? key}) : super(key: key);
  @override
  _DashboardSignInScreenState createState() => _DashboardSignInScreenState();
}

class _DashboardSignInScreenState extends State<DashboardSignIn> {
  late AuthController authController;
  @override
  void initState() {
    authController = Get.put(AuthController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 17,
                  top: 17,
                ),
                child: Image.asset(
                  labourPartyLogo,
                  width: 44,
                  height: 25,
                ),
              ),
              const Spacer(),
              Obx(() {
                if (!authController.loading.value) {
                  var isLogin = authController.isLogin.value;
                  if (isLogin) {
                    return IsAuth(themeData: themeData);
                  } else {
                    return IsNotAuth(themeData: themeData);
                  }
                }
                return Container();
              }),
            ],
          ),
        ),
        bottomSheet: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.width * 0.4,
          decoration: const BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(3.0),
              topRight: Radius.circular(600.0),
            ),
          ),
        ),
      ),
    );
  }
}
