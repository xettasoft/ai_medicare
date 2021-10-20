import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class AuthFooter extends StatelessWidget {
  const AuthFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool darkModeOn = Get.isDarkMode;
    double width = Get.width;
    double height = Get.height;
    return Column(
      
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
              SvgPicture.asset(
                    'assets/images/svg/onboard-bt-1.svg',
                    width: width * 0.15,
                  ),
                  SvgPicture.asset(
                    'assets/images/svg/onboard-bt-1.svg',
                    width: width * 0.15,
                  )
          ],
        ),
        Text("authFooterText".tr),
      ],
    );
  }
}
