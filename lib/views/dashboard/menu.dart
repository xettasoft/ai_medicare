import 'package:ai_medicare/common/menu_constant.dart';
import 'package:ai_medicare/views/dashboard/menu_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Container(
        margin: const EdgeInsets.only(left: 15, right: 5),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            children: List.generate(
              MenuData.data.length,
              (index) => MenuCard(
                menu: MenuData.data[index],
              ),
            )));
  }
}
