import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/common/font_family.dart';
import 'package:ai_medicare/controllers/login_controller.dart';
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
      appBar: AppBar(
        title: Text("Sign In",
            style: TextStyle(
              color: AppColors.appPrimaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontFamily: FontFamily.HKGroteskSemiBold,
            )),
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Text("Login")
    );
  }
}
