import 'package:ai_medicare/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: height * 0.15,
                ),
                SvgPicture.asset(
                  'assets/images/svg/complete-registration.svg',
                  width: width * 0.8,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "welcomeHome".tr,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5, horizontal: 100),
                    child: Text(
                      "welcomeText".tr,
                      style: const TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 0,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: AppColors.appPrimaryColor,
                      shape: const StadiumBorder()),
                  onPressed: () {
                    Get.toNamed('/');
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "home".tr,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
