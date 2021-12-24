import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SymptomCheckerStatus extends StatelessWidget {
  const SymptomCheckerStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Container(
      margin: const EdgeInsets.only(top: 25, left: 15, right: 15),
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
              "Symptom Checker Status",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/wallet_setup");
              },
              child: const Text("low balance"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent,
                  elevation: 0,
                  shape: const StadiumBorder()),
            )
          ],
        ),
      ),
    );
  }
}
