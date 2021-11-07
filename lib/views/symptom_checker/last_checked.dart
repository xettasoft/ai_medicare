import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/symptom_checker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LastChecked extends StatelessWidget {
  LastChecked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: GetBuilder(
              builder: (SymptomCheckerController controller) =>
                  ListView.builder(
                    itemCount: controller.lastCheckData.length,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 0),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: ListTile(
                            title: Text(controller.lastCheckData[index]),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: AppColors.appPrimaryColor,
                                )),
                          ));
                    },
                  ))),
    );
  }
}
