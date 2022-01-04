import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/login_controller.dart';
import 'package:ai_medicare/providers/models/authModel/auth_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key, this.loader}) : super(key: key);
  final void Function(BuildContext)? loader;

  @override
  Widget build(BuildContext context) {
    bool darkModeOn = Get.isDarkMode;
    double width = Get.width;
    double height = Get.height;
    return GetBuilder(
      builder: (LoginController controller) => ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: AppColors.appPrimaryColor, shape: const StadiumBorder()),
        onPressed: () async {
          FocusScope.of(context).requestFocus(FocusNode());
          if (controller.submitFunc.value != null) {
            loader!(context);
            AuthModel result = await controller.submitFunc.value!();
            Get.back();
            if (result.success == true) {
              Get.toNamed('/home');
            } else {
              controller.setError(result.message ?? "");
            }
          } else {
            controller.setError("Ensure you enter your credentials");
          }
        },
        child: Center(
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
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
      ),
    );
  }
}

//Get.toNamed("/welcome");