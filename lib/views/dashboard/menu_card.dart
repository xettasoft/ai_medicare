import 'package:ai_medicare/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({Key? key, this.menu}) : super(key: key);
  final Map<String, String>? menu;

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return GestureDetector(
        onTap: () {
          Get.toNamed("${menu!["route"]}");
        },
        child: Container(
            margin: const EdgeInsets.only(top: 10, right: 10),
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            decoration: BoxDecoration(
                color: menu!["primary"] == "yes"
                    ? AppColors.appPrimaryColor
                    : Colors.grey.shade200,
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.05),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  '${menu!["image"]}',
                  width: width * 0.2,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text('${menu!["name"]}'),
                ),
              ],
            )));
  }
}
