import 'package:ai_medicare/views/onboarding/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({Key? key}) : super(key: key);

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
                  'assets/images/svg/onboard-2.svg',
                  width: width,
                  fit: BoxFit.fill,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SvgPicture.asset(
                    'assets/images/svg/logo.svg',
                    width: width * 0.4,
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
                header: "onboardingPageTwoTitle",
                text: "onboardingPageTwoText",
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
          onTap: () {
            Get.toNamed('/onboarding-three');
          },
          child: SvgPicture.asset(
            'assets/images/svg/onboard-bt-2.svg',
            width: width * 0.15,
          )),
    );
  }
}
