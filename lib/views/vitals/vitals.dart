import 'package:ai_medicare/views/vitals/basic_parameter.dart';
import 'package:ai_medicare/views/vitals/bmi_card.dart';
import 'package:ai_medicare/views/vitals/current_vitals.dart';
import 'package:ai_medicare/views/vitals/device_reading.dart';
import 'package:ai_medicare/views/vitals/symptom_checker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Vitals extends StatelessWidget {
  const Vitals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text("Vitals"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 0, right: 0, bottom: 30),
          child: ListView(
            children: const [
              BMICard(
                paddingTop: 5,
              ),
              SymptomChecker(),
              BasicParameter(),
              DeviceReading(),
              CurrentVitals()
            ],
          ),
        ));
  }
}
