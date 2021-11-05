import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorProfile extends StatelessWidget {
  DoctorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text("Profile"),
      ),
      body: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Text("profile")),
    );
  }
}
