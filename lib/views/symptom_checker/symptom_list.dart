import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/symptom_checker_controller.dart';
import 'package:ai_medicare/controllers/theme_controller.dart';
import 'package:ai_medicare/views/symptom_checker/single_symptom.dart';
import 'package:ai_medicare/views/symptom_checker/symptom_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SymptomList extends StatelessWidget {
  const SymptomList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: GetBuilder(
              builder: (SymptomCheckerController controller) => Column(
                    children: [
                      const Expanded(
                        flex: 0,
                        child: SymptomSearchField(),
                      ),
                      Expanded(
                          child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                  color: ThemeController.to.themeMode ==
                                          ThemeMode.light
                                      ? Colors.grey.shade200
                                      : AppColors.Color6,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: Obx(() => ListView.builder(
                                    itemCount: controller.symptoms.length,
                                    itemBuilder: (context, index) {
                                      return SingleSymptom(
                                        title: controller.symptoms[index],
                                      );
                                    },
                                  )))),
                      Expanded(
                          flex: 0,
                          child: Obx(() {
                            return controller.selectedSymptoms.isNotEmpty
                                ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 20),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: AppColors.appPrimaryColor,
                                          shape: const StadiumBorder()),
                                      onPressed: () {
                                        controller.checkSymptom();
                                        //Get.offAndToNamed("/vitals");
                                      },
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 15),
                                          child: Text(
                                            "Next".tr,
                                            style:
                                                const TextStyle(fontSize: 18),
                                          ),
                                        ),
                                      ),
                                    ))
                                : const SizedBox.shrink();
                          }))
                    ],
                  ))),
    );
  }
}
