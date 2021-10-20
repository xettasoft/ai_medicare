import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/views/auth_views/auth_component/final_step_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FinalStep extends StatelessWidget {
  const FinalStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "finalStep".tr,
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
                      "finalStepText".tr,
                      style: const TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  width: width * 0.8,
                  height: height * 0.6,
                  decoration: BoxDecoration(
                    color: AppColors.appPrimaryColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const FinalStepContent(),
                ),
                SizedBox(
                  height: height * 0.02,
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
                    Get.toNamed('/welcome');
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "confirm".tr,
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
