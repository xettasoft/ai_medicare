import 'package:ai_medicare/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchFilterChip extends StatelessWidget {
  const SearchFilterChip({Key? key, this.title, this.isChecked})
      : super(key: key);
  final String? title;
  final bool? isChecked;

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Container(
        margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
        width: width * .5,
        height: 50,
        decoration: BoxDecoration(
            color: AppColors.appPrimaryColor,
            borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                child: Text(
              title!,
              style: const TextStyle(color: Colors.white),
            )),
            Expanded(
                child: Align(
              alignment: Alignment.centerRight,
              child: Checkbox(
                value: isChecked!,
                onChanged: (value) {},
                shape: const CircleBorder(),
                activeColor: AppColors.appPrimaryColor,
              ),
            ))
          ],
        ));
  }
}
