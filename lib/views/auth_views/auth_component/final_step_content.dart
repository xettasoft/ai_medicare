import 'package:ai_medicare/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FinalStepContent extends StatelessWidget {
  const FinalStepContent({Key? key, this.isLogin}) : super(key: key);
  final bool? isLogin;
  @override
  Widget build(BuildContext context) {
    bool darkModeOn = Get.isDarkMode;
    double width = Get.width;
    double height = Get.height;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.08,
          ),
          SvgPicture.asset(
            'assets/images/svg/logo-white.svg',
            width: width * 0.4,
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "confirmReg".tr,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.0,
          ),
          SizedBox(
            width: width * 0.3,
            child: const Divider(
              color: AppColors.whiteColor,
              thickness: 1,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
              child: Text(
                "confirmText".tr,
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.whiteColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
