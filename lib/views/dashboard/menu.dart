import 'package:ai_medicare/views/dashboard/menu_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);

  final List<Map<String, String>> data = [
    {
      "name": "Symptopm Checker",
      "image": "assets/images/svg/symptom.svg",
      "primary": "yes",
      "route": "/symptomCheck"
    },
    {
      "name": "Medications",
      "image": "assets/images/svg/rx-icon.svg",
      "primary": "no",
      "route": "/medications"
    },
    {
      "name": "My Doctors",
      "image": "assets/images/svg/myDoctor.svg",
      "primary": "no",
      "route": "/myDoctors"
    },
    {
      "name": "Hospital",
      "image": "assets/images/svg/rx-icon.svg",
      "primary": "no",
      "route": "/symptomCheck"
    },
    {
      "name": "Pharmacies",
      "image": "assets/images/svg/pharmacy.svg",
      "primary": "no",
      "route": "/pharmacy"
    },
    {
      "name": "Medical Lab",
      "image": "assets/images/svg/lab-icon.svg",
      "primary": "no",
      "route": "/symptomCheck"
    },
  ];
  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Container(
        margin: EdgeInsets.only(left: 15, right: 5),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            children: List.generate(
              data.length,
              (index) => MenuCard(
                menu: data[index],
              ),
            )));
  }
}
