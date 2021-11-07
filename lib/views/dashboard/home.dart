import 'package:ai_medicare/controllers/home_controller.dart';
import 'package:ai_medicare/views/dashboard/ask_question.dart';
import 'package:ai_medicare/views/dashboard/latest_feed.dart';
import 'package:ai_medicare/views/dashboard/menu.dart';
import 'package:ai_medicare/views/dashboard/name_header.dart';
import 'package:ai_medicare/views/dashboard/symptom_status.dart';
import 'package:ai_medicare/views/device/device_status.dart';
import 'package:ai_medicare/views/device/setup_card.dart';
import 'package:ai_medicare/views/vitals/bmi_card.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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
          padding: const EdgeInsets.only(left: 0, right: 0, bottom: 0),
          child: ListView(
            children: [
              Obx(() {
                if (controller.isDeviceSetupNotifier.isFalse) {
                  SchedulerBinding.instance
                      ?.addPostFrameCallback((_) => _deviceSetup(context));
                }
                controller.isDeviceSetupNotified();
                return const SizedBox.shrink();
              }),
              const NameHeader(),
              const BMICard(
                isVital: true,
                padding: 15,
              ),
              const SymptomCheckerStatus(),
              DeviceStatus(action: () {
                controller.isDeviceSetupNotified(state: false);
              }),
              Menu(),
              const LatestFeed(),
              const AskQuestion(),
            ],
          ),
        ));
  }

  void _deviceSetup(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.black.withOpacity(0.3),
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (BuildContext bc) {
          return const Center(
            child: SetupCard(),
          );
        });
  }
}
