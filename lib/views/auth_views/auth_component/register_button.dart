import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/register_controller.dart';
import 'package:ai_medicare/providers/models/authModel/auth_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key, this.isLogin, this.loader}) : super(key: key);
  final bool? isLogin;
  final void Function(BuildContext)? loader;
  @override
  Widget build(BuildContext context) {
    bool darkModeOn = Get.isDarkMode;
    double width = Get.width;
    double height = Get.height;
    return GetBuilder(
        builder: (RegisterController controller) => ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: AppColors.appPrimaryColor,
                  shape: const StadiumBorder()),
              onPressed: () async {
                FocusScope.of(context).requestFocus(FocusNode());
                if (controller.submitFunc != null) {
                  loader!(context);
                  AuthModel result = await controller.submitFunc!();
                  Get.back();
                  if (result.success == true) {
                    Get.toNamed('/home');
                  } else {
                    controller.setError(result.message ?? "");
                  }
                } else {
                  controller.setError("Ensure you enter your details.");
                }
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "register".tr,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ));
  }
}
