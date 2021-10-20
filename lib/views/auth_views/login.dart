import 'package:ai_medicare/controllers/login_controller.dart';
import 'package:ai_medicare/views/auth_views/auth_component/footer.dart';
import 'package:ai_medicare/views/auth_views/auth_component/login_button.dart';
import 'package:ai_medicare/views/auth_views/auth_component/login_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends GetView<LoginController> {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool darkModeOn = Get.isDarkMode;
    double width = Get.width;
    double height = Get.height;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          //Expanded(child: Text("1")),
          Expanded(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "hey".tr,
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    "welcome".tr,
                    style: const TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  LoginForm()
                ],
              ),
            ),
          ),
          const Expanded(
            flex: 0,
            child: LoginButton(),
          ),
          const Expanded(
            flex: 0,
            child: AuthFooter(
              isLogin: false,
            ),
          ),
        ],
      ),
    ));
  }
}
