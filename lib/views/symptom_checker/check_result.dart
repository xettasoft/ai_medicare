import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/symptom_checker_controller.dart';
import 'package:ai_medicare/controllers/theme_controller.dart';
import 'package:ai_medicare/views/symptom_checker/result_card.dart';
import 'package:ai_medicare/views/symptom_checker/save.dart';
import 'package:ai_medicare/views/symptom_checker/share.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckResult extends StatelessWidget {
  const CheckResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: GetBuilder(
              builder: (SymptomCheckerController controller) => Column(
                    children: [
                      const Expanded(
                        flex: 0,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: Text(
                            "Symptom check complete, possible conditions are represented with colours based on there degree of sevierity",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AppColors.appPrimaryColor),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                              color: ThemeController.to.themeMode ==
                                      ThemeMode.light
                                  ? Colors.grey.shade100
                                  : Colors.black45,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: const Center(
                            child: Text(
                              "Possible Conditions",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Obx(() => ListView.builder(
                              itemCount: controller.result.length,
                              itemBuilder: (context, index) {
                                return SymptomResultCard(
                                  title: controller.result[index],
                                  percent: (index + 1),
                                );
                              },
                            )),
                      ),
                      // Expanded(
                      //     flex: 0,
                      //     child: Padding(
                      //         padding: const EdgeInsets.symmetric(
                      //             vertical: 5, horizontal: 20),
                      //         child: ElevatedButton(
                      //           style: ElevatedButton.styleFrom(
                      //               primary: AppColors.appPrimaryColor,
                      //               shape: const StadiumBorder()),
                      //           onPressed: () {
                      //             _Done(context, isShare: false);
                      //             //Get.offAndToNamed("/vitals");
                      //           },
                      //           child: Center(
                      //             child: Padding(
                      //               padding: const EdgeInsets.symmetric(
                      //                   vertical: 15),
                      //               child: Text(
                      //                 "Save".tr,
                      //                 style: const TextStyle(fontSize: 18),
                      //               ),
                      //             ),
                      //           ),
                      //         ))),
                      Expanded(
                          flex: 0,
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: AppColors.appPrimaryColor,
                                    shape: const StadiumBorder()),
                                onPressed: () {
                                  _Done(context);
                                  //Get.offAndToNamed("/vitals");
                                },
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15),
                                    child: Text(
                                      "Share".tr,
                                      style: const TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ),
                              ))),
                    ],
                  ))),
    );
  }

  void _Done(BuildContext context, {bool isShare = true}) {
    showModalBottomSheet(
        backgroundColor: Colors.black.withOpacity(0.3),
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (BuildContext bc) {
          return Center(
              child: isShare ? const ShareResult() : const SaveResult());
        });
  }
}
