import 'package:ai_medicare/common/constant.dart';
import 'package:ai_medicare/views/shared/coming_soon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text("Chat"),
      ),
      body: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Constants.comingSoon ? ComingSoon() : Text("Chat")),
    );
  }
}
