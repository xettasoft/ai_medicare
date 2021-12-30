import 'package:ai_medicare/views/onboarding/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class OnboardingFour extends StatelessWidget {
  const OnboardingFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                SvgPicture.asset(
                  'assets/images/svg/onboard-4.svg',
                  width: width,
                  fit: BoxFit.fill,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: SvgPicture.asset(
                        'assets/images/svg/logo-white.svg',
                        width: width * 0.3,
                      )),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(top: height * 0.1, left: width * 0.05),
              child: const OnboardingTextWidget(
                header: "onboardingPageFourTitle",
                text: "onboardingPageFourText",
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
          onTap: () {
            Get.toNamed('/register');
          },
          child: SvgPicture.asset(
            'assets/images/svg/onboard-bt-4.svg',
            width: width * 0.15,
          )),
    );
  }
}
