import 'package:ai_medicare/controllers/login_controller.dart';
import 'package:ai_medicare/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends GetView<LoginController> {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool darkModeOn = Get.isDarkMode;
    double width = Get.width;
    double height = Get.height;
    return GetBuilder(
      builder: (LoginController controller) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Obx(() => Text(
                    controller.error,
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                  )),
            ),
            Container(
                decoration: BoxDecoration(
                    color: ThemeController.to.themeMode == ThemeMode.light
                        ? Colors.grey.shade200
                        : Colors.black26,
                    borderRadius: BorderRadius.circular(25)),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                        child: Obx(() => TextFormField(
                              decoration: InputDecoration(
                                  icon: const Icon(Icons.mail_outline),
                                  hintText: 'emailMessage'.tr,
                                  labelText: 'email'.tr,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorText: controller.uErorText.value),
                              onChanged: controller.usernameChanged,
                            )))
                  ],
                )),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
                decoration: BoxDecoration(
                    color: ThemeController.to.themeMode == ThemeMode.light
                        ? Colors.grey.shade200
                        : Colors.black26,
                    borderRadius: BorderRadius.circular(25)),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                        child: Obx(() => TextFormField(
                              decoration: InputDecoration(
                                  icon: const Icon(Icons.lock_open_outlined),
                                  suffixIcon: IconButton(
                                      onPressed:
                                          controller.passwordVisibilityChanged,
                                      icon: Icon(controller.pVisibility
                                          ? Icons.visibility
                                          : Icons.visibility_off)),
                                  hintText: 'passwordMessage'.tr,
                                  labelText: 'password'.tr,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorText: controller.pErorText.value),
                              onChanged: controller.passwordChanged,
                              obscureText: controller.pVisibility,
                            )))
                  ],
                )),
            SizedBox(
              height: height * 0.02,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed("/welcome");
              },
              child: Text(
                "forgotPassword".tr,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade500,
                    decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
  }
}
