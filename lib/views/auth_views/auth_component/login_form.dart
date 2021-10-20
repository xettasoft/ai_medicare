import 'package:ai_medicare/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends GetView<LoginController> {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool darkModeOn = Get.isDarkMode;
    double width = Get.width;
    double height = Get.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: height * 0.03,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(25)),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.mail_outline),
                      hintText: 'emailMessage'.tr,
                      labelText: 'email'.tr,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String? value) {
                      return (value != null && value.contains('@'))
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ))
                ],
              )),
          SizedBox(
            height: height * 0.01,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(25)),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock_open_outlined),
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.visibility)),
                      hintText: 'passwordMessage'.tr,
                      labelText: 'password'.tr,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String? value) {
                      return (value != null && value.contains('@'))
                          ? 'Do not use the @ char.'
                          : null;
                    },
                    obscureText: true,
                  ))
                ],
              )),
          SizedBox(
            height: height * 0.02,
          ),
          GestureDetector(
            onTap: () {},
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
    );
  }
}
