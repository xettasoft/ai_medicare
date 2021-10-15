import 'package:ai_medicare/controllers/login_controller.dart';
import 'package:ai_medicare/views/onboarding/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class OnboardingOne extends GetView<LoginController> {
  const OnboardingOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child:Stack(
              children: [
                SvgPicture.asset(
                  'assets/images/svg/onboard-1.svg',
                  width: width,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'assets/images/svg/logo-white.svg',
                    width: width * 0.3,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(top: height * 0.1, left: width * 0.05),
              child: const OnboardingTextWidget(
                header: "onboardingPageOneTitle",
                text: "onboardingPageOneText",
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
           Get.toNamed('/onboarding-two');
        },
        child: SvgPicture.asset(
                    'assets/images/svg/onboard-bt-1.svg',
                    width: width * 0.15,
                  )
      ),
    );
  }
}
