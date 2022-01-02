import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingCard extends StatelessWidget {
  const LoadingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            decoration: BoxDecoration(
                color: ThemeController.to.themeMode == ThemeMode.light
                    ? AppColors.whiteColor
                    : Colors.black87,
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.05),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ]),
            //width: width * 0.8,
            //height: height * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: width * 0.15,
                    height: width * 0.15,
                    child: const CircularProgressIndicator(
                      color: AppColors.appPrimaryColor,
                      strokeWidth: 6,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Please wait...',
                    style: TextStyle(
                        color: Colors.grey.withOpacity(0.8),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
