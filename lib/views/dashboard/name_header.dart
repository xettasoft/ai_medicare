import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NameHeader extends StatelessWidget {
  const NameHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Text(
          "Sherrif Admu",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
