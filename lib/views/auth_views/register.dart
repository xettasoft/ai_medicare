import 'package:ai_medicare/controllers/register_controller.dart';
import 'package:ai_medicare/views/auth_views/auth_component/register_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends GetView<RegisterController> {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(top: width * 0),
                child: const RegisterTab(),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
