import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/theme_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetupDone extends StatelessWidget {
  const SetupDone({Key? key, this.image}) : super(key: key);
  final String? image;

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Container(
        margin: const EdgeInsets.only(top: 10, right: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        decoration: BoxDecoration(
            color: ThemeController.to.themeMode == ThemeMode.light
                ? AppColors.whiteColor
                : Colors.black87,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.05),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ]),
        width: width * 0.8,
        height: height * 0.35,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: ListTile(
                title: const Text("Bluetooth"),
                trailing: CupertinoSwitch(
                  activeColor: AppColors.appPrimaryColor,
                  value: true,
                  onChanged: (value) {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                'Available Device',
                style: TextStyle(
                    color: Colors.grey.withOpacity(0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    image!,
                    width: width * 0.4,
                    scale: 0.8,
                  ),
                ),
                title: const Text("Available Device"),
                trailing: const Icon(
                  Icons.circle,
                  color: AppColors.appPrimaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
                width: width * 0.5,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: AppColors.appPrimaryColor,
                      shape: const StadiumBorder()),
                  onPressed: () {
                    Navigator.pop(context);
                    Get.offAndToNamed("/vitals");
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "Done".tr,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: 5,
            ),
          ],
        ));
  }
}
