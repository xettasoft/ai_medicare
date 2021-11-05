import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/views/auth_views/auth_component/user_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterTab extends StatelessWidget {
  const RegisterTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return Scaffold(
      backgroundColor: AppColors.Color1,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Expanded(
              flex: 0,
              child: SizedBox(
                height: 20,
              )),
          Expanded(
              flex: 0,
              child: Center(
                child: Text(
                  "hey".tr,
                  style: const TextStyle(fontSize: 18),
                ),
              )),
          Expanded(
              flex: 0,
              child: Center(
                child: Text(
                  "createAccount".tr,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              )),
          const Expanded(
            child: UserForm(
              title: "user",
            ),
          )
        ],
      ),
    );
  }
}
