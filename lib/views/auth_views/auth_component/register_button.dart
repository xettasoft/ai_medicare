import 'package:ai_medicare/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key, this.isLogin}) : super(key: key);
  final bool? isLogin;
  @override
  Widget build(BuildContext context) {
    bool darkModeOn = Get.isDarkMode;
    double width = Get.width;
    double height = Get.height;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: AppColors.appPrimaryColor, shape: const StadiumBorder()),
      onPressed: () {
        Get.toNamed('/complete');
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            "register".tr,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
