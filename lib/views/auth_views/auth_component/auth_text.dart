import 'package:ai_medicare/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthText extends StatelessWidget {
  const AuthText({Key? key, this.isLogin}) : super(key: key);
  final bool? isLogin;
  @override
  Widget build(BuildContext context) {
    bool darkModeOn = Get.isDarkMode;
    double width = Get.width;
    double height = Get.height;
    return GestureDetector(
        onTap: () {
          isLogin! ? Get.toNamed('/login') : Get.toNamed('/register');
        },
        child: RichText(
          text: TextSpan(
            text: isLogin! ? "authFooterText".tr : "authFooterRegisterText".tr,
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                  text: isLogin!
                      ? 'authFooterLoginText'.tr
                      : "authFooterRButtonText".tr,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.appPrimaryColor)),
            ],
          ),
        ));
  }
}
