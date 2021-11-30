import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SymptomChecker extends StatelessWidget {
  const SymptomChecker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      width: width,
      padding: const EdgeInsets.symmetric(vertical: 0),
      decoration: BoxDecoration(
        color: ThemeController.to.themeMode == ThemeMode.light
            ? AppColors.Color2
            : AppColors.Color6,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Symptom Checker",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/symptomCheck");
              },
              child: const Text("Check"),
              style: ElevatedButton.styleFrom(
                  primary: AppColors.appPrimaryColor,
                  elevation: 0,
                  shape: const StadiumBorder()),
            )
          ],
        ),
      ),
    );
  }
}
