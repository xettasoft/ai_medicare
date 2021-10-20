import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class OnboardingTextWidget extends StatelessWidget {
  const OnboardingTextWidget({Key? key, this.header, this.text})
      : super(key: key);
  final String? header;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 0,
            child: Text(
              "$header".tr,
              style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            )),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.only(
                top: Get.height * 0.02, right: Get.width * 0.05),
            child: Text("$text".tr, style: const TextStyle(fontSize: 18)),
          ),
        ),
      ],
    ));
  }
}
