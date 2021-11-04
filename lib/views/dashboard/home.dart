import 'package:ai_medicare/controllers/home_controller.dart';
import 'package:ai_medicare/views/dashboard/drawer_screen.dart';
import 'package:ai_medicare/views/dashboard/name_header.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Scaffold(
        drawer: DrawerScreen(),
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
                    onPressed: () => Scaffold.of(context).openDrawer()),
          ),
          title: Text("Welcome back"),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: IconButton(
                    onPressed: () {},
                    icon: Badge(
                        badgeContent: const Text("1"),
                        child: Icon(
                          Icons.notifications_none,
                          color: Colors.grey.shade500,
                        ))))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: const [NameHeader()],
          ),
        ));
  }
}
