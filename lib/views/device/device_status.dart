import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeviceStatus extends StatelessWidget {
  const DeviceStatus({Key? key, this.action}) : super(key: key);

  final Function? action;

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
            : Colors.black45,
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
              "Set up device now",
              style: TextStyle(fontSize: 14),
            ),
            ElevatedButton(
              onPressed: () {
                action!();
                //Get.toNamed("/symptomCheck");
              },
              child: const Text("Set Up "),
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
