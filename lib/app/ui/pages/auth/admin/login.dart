import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:po2023/app/controller/auth_controller.dart';
import 'package:po2023/app/core/constants/asset_path.dart';
import 'package:po2023/app/core/functions/function.dart';
import 'package:po2023/app/ui/pages/auth/agent/signup.dart';
import 'package:po2023/app/ui/widgets/custom/ios_loader.dart';

import '../../../../core/constants/app_constants.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key}) : super(key: key);

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  late AuthController authController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  void initState() {
    authController = Get.find<AuthController>();

    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(
            top: 84,
          ),
          child: Column(
            children: [
              const Text(
                "ADMIN",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 40,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 11,
                ),
                child: const Text(
                  "*if you are not an admin don’t bother",
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 49,
                ),
                child: Image.asset(
                  adminLoginPng,
                  width: 302,
                  height: 248,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40, top: 28),
                child: Column(
                  children: [
                    SizedBox(
                      height: 55,
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: HexColor("#F6F3F0"),
                          filled: true,
                          hintText: 'Enter your email address',
                          hintStyle: TextStyle(
                            color: HexColor("#01B834"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 55,
                      child: TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: HexColor("#F6F3F0"),
                          filled: true,
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: HexColor("#01B834"),
                          ),
                        ),
                      ),
                    ),
                    Obx(() => SizedBox(
                          width: 242,
                          height: 55,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              primary: primaryColor,
                            ),
                            onPressed: () async {
                              if (!authController.loading.value) {
                                await authController.loginAdmin(
                                  email: emailController.text,
                                  password: passwordController.text,
                                );
                              }

                              if (authController.error.value) {
                                final snackBar = SnackBar(
                                  content: Text(authController.errormsg.value),
                                  backgroundColor: Colors.red,
                                );
                                // Find the ScaffoldMessenger in the widget tree
                                // and use it to show a SnackBar.
                                // ignore: use_build_context_synchronously
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              }

                              ///
                              /// redirect to dashbaord
                              ///
                              if (authController.redirect.value) {
                                await adminLoginSuccess();
                              }
                            },
                            child: authController.loading.value
                                ? const IOSLoader()
                                : const Text(
                                    "SIGN IN",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                          ),
                        )),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AgentSignup(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(
                          top: 17,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account yet?",
                              style: TextStyle(
                                color: Color.fromARGB(255, 43, 42, 42),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Sign up here",
                              style: TextStyle(color: HexColor("#D40702")),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
