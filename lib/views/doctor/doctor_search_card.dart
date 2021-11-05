import 'package:ai_medicare/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DoctorSearchCard extends StatelessWidget {
  const DoctorSearchCard({Key? key, this.doctor}) : super(key: key);
  final String? doctor;
  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("psychiatrist"),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("4.5"),
                  ),
                  SvgPicture.asset(
                    'assets/images/svg/star-icon.svg',
                    width: width * 0.05,
                  )
                ],
              )
            ],
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ));
  }
}
