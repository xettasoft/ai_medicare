import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/medication_controller.dart';
import 'package:ai_medicare/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class Medications extends GetView<MedicationController> {
  const Medications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text("Medications"),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Obx(() => LazyLoadScrollView(
              onEndOfPage: controller.loadNextPage,
              isLoading: controller.lastPage,
              child: Column(
                children: [
                  Expanded(
                      child: ListView.builder(
                    itemCount: controller.medications.length,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 0),
                          decoration: BoxDecoration(
                            color:
                                ThemeController.to.themeMode == ThemeMode.light
                                    ? Colors.grey.shade100
                                    : AppColors.Color6,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: ListTile(
                            onTap: () {
                              Get.toNamed('/medication');
                            },
                            title: Text(controller.medications[index]),
                            subtitle: const Text(
                                "31st October 2022     3:55AM31st October 2022     3:55AM"),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: AppColors.appPrimaryColor,
                                )),
                          ));
                    },
                  )),
                  controller.loading
                      ? const Expanded(
                          flex: 0,
                          child: Text("loading"),
                        )
                      : const SizedBox.shrink()
                ],
              )))),
    );
  }
}
