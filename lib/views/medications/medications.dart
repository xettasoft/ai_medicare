import 'package:ai_medicare/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Medications extends StatelessWidget {
  Medications({Key? key}) : super(key: key);

  final List<String> data = [
    "Tuesday, Jul 20  10:21 AM",
    "Tuesday, Jul 20  10:21 AM",
    "Tuesday, Jul 20  10:21 AM",
    "Tuesday, Jul 20  10:21 AM",
    "Tuesday, Jul 20  10:21 AM",
    "Tuesday, Jul 20  10:21 AM",
    "Tuesday, Jul 20  10:21 AM",
  ];
  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text("Medications"),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: ListTile(
                    title: Text(data[index]),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: AppColors.appPrimaryColor,
                        )),
                  ));
            },
          )),
    );
  }
}
