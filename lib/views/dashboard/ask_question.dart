import 'package:ai_medicare/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AskQuestion extends StatelessWidget {
  const AskQuestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Container(
      margin: const EdgeInsets.only(top: 25),
      width: width,
      padding: const EdgeInsets.symmetric(vertical: 0),
      decoration: const BoxDecoration(
        color: AppColors.Color2,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Ask a question",
              style: TextStyle(fontSize: 14),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/symptomCheck");
              },
              child: const Text("Post"),
              style: ElevatedButton.styleFrom(
                  primary: AppColors.appPrimaryColor,
                  elevation: 0,
                  shape: const StadiumBorder()),
            )
          ],
        ),
      ),
    );
  }
}
