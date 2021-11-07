import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/symptom_checker_controller.dart';
import 'package:ai_medicare/views/symptom_checker/check_now.dart';
import 'package:ai_medicare/views/symptom_checker/last_checked.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SymptomCheck extends GetView<SymptomCheckerController> {
  SymptomCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text("Symptom Checker"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Material(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: Colors.grey.shade200,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TabBar(
                                    unselectedLabelColor: Colors.grey.shade500,
                                    indicator: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColors.appPrimaryColor),
                                    tabs: const [
                                      Tab(
                                          child: Text(
                                        'Last Checked',
                                        style: TextStyle(
                                            // color: AppColors.Color9,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      )),
                                      Tab(
                                          child: Text(
                                        'Check Now',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ]),
                              )),
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [LastChecked(), CheckNow()],
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
