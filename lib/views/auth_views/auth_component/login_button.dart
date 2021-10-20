import 'package:ai_medicare/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool darkModeOn = Get.isDarkMode;
    double width = Get.width;
    double height = Get.height;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: AppColors.appPrimaryColor, shape: const StadiumBorder()),
      onPressed: () {},
      child: Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/svg/login-icon.svg',
                  width: width * 0.05,
                ),
                Text(
                  "login".tr,
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            )),
      ),
    );
  }
}
