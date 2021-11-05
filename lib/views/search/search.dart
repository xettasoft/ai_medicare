import 'package:ai_medicare/views/dashboard/drawer_screen.dart';
import 'package:ai_medicare/views/doctor/doctor_search_card.dart';
import 'package:ai_medicare/views/search/search_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Search extends StatelessWidget {
  Search({Key? key}) : super(key: key);

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
      drawer: DrawerScreen(),
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
                  onPressed: () => Scaffold.of(context).openDrawer()),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              const Expanded(
                flex: 0,
                child: SearchField(),
              ),
              const Expanded(
                flex: 0,
                child: Text("chip"),
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
