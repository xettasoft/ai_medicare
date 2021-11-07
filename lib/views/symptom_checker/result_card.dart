import 'package:ai_medicare/controllers/symptom_checker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SymptomResultCard extends StatelessWidget {
  const SymptomResultCard({Key? key, this.title, this.percent})
      : super(key: key);
  final String? title;
  final int? percent;

  getColor(int percent) {
    switch (percent) {
      case 1:
        return Colors.red;
      case 2:
        return Colors.yellow.shade900;
      case 3:
        return Colors.blue.shade700;
      default:
        return Colors.grey.shade700;
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder(
            builder: (SymptomCheckerController controller) => Row(
                  children: [
                    Expanded(
                        flex: 0,
                        child: Container(
                            margin: const EdgeInsets.only(
                                top: 10, right: 10, bottom: 10),
                            decoration: BoxDecoration(
                                color: getColor(percent!),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              child: Text(
                                "18%",
                                style: TextStyle(color: Colors.white),
                              ),
                            ))),
                    Expanded(
                        child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                            child: ExpansionTile(
                              title: Text(
                                title!,
                                style: TextStyle(color: Colors.grey.shade500),
                              ),
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  child: Text(
                                    "This is a dieases that is caused as a result of lorem ipseumThis is a dieases that is caused as a result of lorem ipseumThis is a dieases that is caused as a result of lorem ipseumThis is a dieases that is caused as a result of lorem ipseumThis is a dieases that is caused as a result of lorem ipseum",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                )
                              ],
                            )))
                  ],
                )));
  }
}
