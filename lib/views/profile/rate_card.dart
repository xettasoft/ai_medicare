import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/theme_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileRateCard extends StatelessWidget {
  const ProfileRateCard({Key? key, this.label = "label", this.value = "0"})
      : super(key: key);
  final String? value;
  final String? label;

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 0),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: height * 0.1,
      decoration: BoxDecoration(
          color: ThemeController.to.themeMode == ThemeMode.light
              ? Colors.white
              : AppColors.Color6,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: ThemeController.to.themeMode == ThemeMode.light
                  ? Colors.grey.withOpacity(0.2)
                  : Colors.black45.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value ?? "0",
              style: const TextStyle(
                  fontSize: 20,
                  color: AppColors.appPrimaryColor,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              label ?? "label",
              style: const TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
