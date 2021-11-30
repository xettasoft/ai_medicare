import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Reciepts extends StatelessWidget {
  const Reciepts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text("Reciepts"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: ThemeController.to.themeMode == ThemeMode.light
                      ? Colors.grey.shade200
                      : AppColors.Color6.withOpacity(0.2),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: ListView.separated(
                  itemCount: 10,
                  itemBuilder: (context, index) => ListTile(
                    onTap: () {
                      Get.toNamed("/reciept");
                    },
                    leading: CircleAvatar(
                      //radius: 10,
                      backgroundColor:
                          ThemeController.to.themeMode == ThemeMode.light
                              ? AppColors.Color2
                              : Colors.grey.shade700,
                    ),
                    title: const Text("Symptom Checker 25th OCT 2021"),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("5days Ago"),
                        Text(
                          "-300",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => const Divider(),
                ),
              ),
            )
          ],
        ));
  }
}
