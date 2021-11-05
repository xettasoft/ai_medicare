import 'package:ai_medicare/controllers/home_controller.dart';
import 'package:ai_medicare/views/dashboard/ask_question.dart';
import 'package:ai_medicare/views/dashboard/latest_feed.dart';
import 'package:ai_medicare/views/dashboard/menu.dart';
import 'package:ai_medicare/views/dashboard/name_header.dart';
import 'package:ai_medicare/views/dashboard/symptom_status.dart';
import 'package:ai_medicare/views/device/device_status.dart';
import 'package:ai_medicare/views/vitals/bmi_card.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key, this.drawer}) : super(key: key);
  final Function? drawer;

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          leading: Builder(
            builder: (context) => // Ensure Scaffold is in context
                IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.grey,
                    ),
                    onPressed: () => drawer!()),
          ),
          title: const Text("Welcome back"),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                    onPressed: () {
                      Get.toNamed("/notifications");
                    },
                    icon: Badge(
                        badgeContent: const Text("1"),
                        child: Icon(
                          Icons.notifications_none,
                          color: Colors.grey.shade500,
                        ))))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
          child: ListView(
            children: [
              const NameHeader(),
              const BMICard(
                isVital: true,
              ),
              const SymptomCheckerStatus(),
              const DeviceStatus(),
              Menu(),
              const LatestFeed(),
              const AskQuestion(),
            ],
          ),
        ));
  }
}
