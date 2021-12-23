import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Center(
            child: SvgPicture.asset(
          ThemeController.to.themeMode == ThemeMode.light
              ? 'assets/images/svg/logo.svg'
              : 'assets/images/svg/logo-white.svg',
          width: width * 0.3,
        )),
        Text(
          "Coming Soon",
          style: TextStyle(
              fontSize: 30,
              color: ThemeController.to.themeMode == ThemeMode.light
                  ? AppColors.appPrimaryColor
                  : Colors.grey),
        )
      ],
    );
  }
}
