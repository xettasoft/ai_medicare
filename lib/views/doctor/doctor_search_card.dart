import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DoctorSearchCard extends StatelessWidget {
  const DoctorSearchCard({Key? key, this.doctor, this.canMessage = false})
      : super(key: key);
  final String? doctor;
  final bool? canMessage;
  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
            color: ThemeController.to.themeMode == ThemeMode.light
                ? AppColors.whiteColor
                : AppColors.Color6,
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
        child: ListTile(
          onTap: () {
            Get.toNamed("/doctorProfile");
          },
          leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image.asset(
                'assets/images/doctor.png',
                width: width,
              )),
          title: Text(
            doctor ?? "doctor",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("psychiatrist"),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text("4.5"),
                  ),
                  SvgPicture.asset(
                    'assets/images/svg/star-icon.svg',
                    width: width * 0.05,
                  ),
                ],
              ),
              canMessage!
                  ? GestureDetector(
                      onTap: () {
                        Get.toNamed("/chat");

                        ///chat
                      },
                      child: const Icon(
                        Icons.chat,
                        color: AppColors.appPrimaryColor,
                      ),
                    )
                  : Container(),
            ],
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ));
  }
}
