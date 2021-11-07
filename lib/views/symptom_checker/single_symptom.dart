import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/symptom_checker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingleSymptom extends StatelessWidget {
  const SingleSymptom({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder(
            builder: (SymptomCheckerController controller) => ListTile(
                  title: Text(
                    title!,
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  trailing: Obx(() => Checkbox(
                        value: controller.selectedSymptoms.contains(title),
                        onChanged: (value) {
                          controller.selectSymptom(symptom: title!);
                        },
                        shape: const CircleBorder(),
                        activeColor: AppColors.appPrimaryColor,
                      )),
                )));
  }
}
