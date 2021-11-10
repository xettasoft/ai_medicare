import 'package:ai_medicare/views/doctor/doctor_search_card.dart';
import 'package:ai_medicare/views/search/search_chip.dart';
import 'package:ai_medicare/views/search/search_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDoctors extends StatelessWidget {
  const MyDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    final List<String> data = [
      "Dr. Ismail Shareef",
      "Dr. Ismail Shareef",
      "Dr. Ismail Shareef",
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text("My Doctors"),
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
                      canMessage: true,
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}
