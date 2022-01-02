import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/seesion_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Onboarding extends GetView<SessionController> {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/images/svg/logo.svg',
                  width: width * 0.4,
                )),
          ),
          Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 0,
                    child: Obx(() {
                      if (controller.isLoggedIn) {
                        print("logged in");
                        SchedulerBinding.instance
                            ?.addPostFrameCallback((_) => Get.toNamed('/home'));
                      } else if (controller.settings.firstTime != null) {
                        if (controller.settings.firstTime == true) {
                          SchedulerBinding.instance?.addPostFrameCallback(
                              (_) => Get.toNamed('/onboarding-one'));
                        } else {
                          SchedulerBinding.instance?.addPostFrameCallback(
                              (_) => Get.toNamed('/login'));
                        }
                      }
                      return const SizedBox.shrink();
                    }),
                  ),
                  Expanded(
                      flex: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "onboardingPrefix".tr,
                            style: const TextStyle(
                                fontSize: 45,
                                color: AppColors.appPrimaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "onboardingPageTitle".tr,
                            style: const TextStyle(
                                fontSize: 45, fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: Get.height * 0.02, right: Get.width * 0.05),
                      child: Text("onboardingPageText".tr,
                          style: const TextStyle(fontSize: 18)),
                    ),
                  ),
                  const Expanded(
                    flex: 0,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 50),
                      child: CircularProgressIndicator(
                        color: AppColors.appPrimaryColor,
                      ),
                    ),
                  ),
                  // Expanded(
                  //   flex: 0,
                  //   child: Padding(
                  //       padding: const EdgeInsets.symmetric(
                  //           vertical: 50, horizontal: 30),
                  //       child: ElevatedButton(
                  //         onPressed: () {
                  //           Get.toNamed('/onboarding-one');
                  //         },
                  //         style: ElevatedButton.styleFrom(
                  //             primary: AppColors.appPrimaryColor,
                  //             shape: const StadiumBorder()),
                  //         child: Center(
                  //           child: Padding(
                  //             padding: const EdgeInsets.symmetric(vertical: 20),
                  //             child: Text(
                  //               "getStarted".tr,
                  //               style: const TextStyle(fontSize: 18),
                  //             ),
                  //           ),
                  //         ),
                  //       )),
                  // ),
                ],
              )),
        ],
      ),
    );
  }
}
