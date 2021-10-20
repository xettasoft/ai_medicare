import 'package:ai_medicare/views/onboarding/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class OnboardingThree extends StatelessWidget {
  const OnboardingThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              //fit: StackFit.expand,
              children: [
                SvgPicture.asset(
                  'assets/images/svg/onboard-3.svg',
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
              padding:
                  EdgeInsets.only(top: height * 0.000005, left: width * 0.05),
              child: const OnboardingTextWidget(
                header: "onboardingPageThreeTitle",
                text: "onboardingPageThreeText",
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
          onTap: () {
            Get.toNamed('/onboarding-four');
          },
          child: SvgPicture.asset(
            'assets/images/svg/onboard-bt-3.svg',
            width: width * 0.15,
          )),
    );
  }
}
