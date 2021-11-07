import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/views/vitals/heart_rate_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BasicParameter extends StatelessWidget {
  const BasicParameter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Basic Parameter",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          width: width,
          decoration: const BoxDecoration(
            color: AppColors.Color2,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: Column(
              children: const [HeartRateChart()],
            ),
          ),
        ),
      ],
    );
  }
}
