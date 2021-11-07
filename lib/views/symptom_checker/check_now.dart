import 'package:ai_medicare/controllers/symptom_checker_controller.dart';
import 'package:ai_medicare/views/symptom_checker/check_result.dart';
import 'package:ai_medicare/views/symptom_checker/symptom_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckNow extends StatelessWidget {
  CheckNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: GetBuilder(
              builder: (SymptomCheckerController controller) => Obx(() {
                    if (controller.isChecked.isFalse) {
                      return const SymptomList();
                    } else {
                      return const CheckResult();
                    }
                  }))),
    );
  }
}
