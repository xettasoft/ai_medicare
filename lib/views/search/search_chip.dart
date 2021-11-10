import 'package:ai_medicare/views/search/chip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchChip extends StatelessWidget {
  const SearchChip({Key? key}) : super(key: key);

  static const List<String> data = [
    "All",
    "Psychiatrist",
    "Ganicologists",
  ];

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (contect, index) =>
          SearchFilterChip(title: data[index], isChecked: index == 0),
      itemCount: data.length,
    );
  }
}
