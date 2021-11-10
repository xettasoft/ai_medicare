import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/views/doctor/doctor_search_card.dart';
import 'package:ai_medicare/views/search/search_chip.dart';
import 'package:ai_medicare/views/search/search_field.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Search extends StatelessWidget {
  const Search({Key? key, this.drawer}) : super(key: key);
  final Function? drawer;

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    final List<String> data = [
      "Dr. Ismail Shareef",
      "Dr. Ismail Shareef",
      "Dr. Ismail Shareef",
      "Dr. Ismail Shareef",
      "Dr. Ismail Shareef",
      "Dr. Ismail Shareef",
      "Dr. Ismail Shareef",
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Doctors"),
        leading: Builder(
          builder: (context) => // Ensure Scaffold is in context
              IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.grey,
                  ),
                  onPressed: () => drawer!()),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                  onPressed: () {
                    Get.toNamed("/notifications");
                  },
                  icon: Badge(
                      badgeContent: const Text(
                        "1",
                        style: TextStyle(color: AppColors.whiteColor),
                      ),
                      child: Icon(
                        Icons.notifications_none,
                        color: Colors.grey.shade500,
                      ))))
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              const Expanded(
                flex: 0,
                child: SearchField(),
              ),
              Expanded(
                flex: 0,
                child: SizedBox(
                    height: 50, width: width, child: const SearchChip()),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return DoctorSearchCard(
                      doctor: data[index],
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}
