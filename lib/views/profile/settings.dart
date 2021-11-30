import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    String theme =
        ThemeController.to.themeMode == ThemeMode.light ? "Light" : "Dark";
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text("Settings"),
        ),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              width: width,
              decoration: BoxDecoration(
                  color: ThemeController.to.themeMode == ThemeMode.light
                      ? Colors.white
                      : Colors.black45.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: ThemeController.to.themeMode == ThemeMode.light
                          ? Colors.grey.withOpacity(0.2)
                          : Colors.black45.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        onTap: () {
                          ThemeController.to.themeMode == ThemeMode.light
                              ? ThemeController.to.setThemeMode(ThemeMode.dark)
                              : ThemeController.to
                                  .setThemeMode(ThemeMode.light);
                          Get.toNamed("/home");
                        },
                        leading: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Icon(
                              ThemeController.to.themeMode == ThemeMode.light
                                  ? Icons.light_mode
                                  : Icons.dark_mode,
                              color: AppColors.appPrimaryColor,
                            )),
                        title: Text("Theme ($theme) "),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  )),
            )
          ],
        ));
  }
}
