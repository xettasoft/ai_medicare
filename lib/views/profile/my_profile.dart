import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/views/profile/profile_card.dart';
import 'package:ai_medicare/views/profile/rate_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    final List<Map<String, dynamic>> accountList = [
      {
        "icon": "personal_data.svg",
        "title": "Personal Data",
        "trailing": const Icon(Icons.arrow_forward_ios)
      },
      {
        "icon": "medical_records.svg",
        "title": "Medical Records",
        "trailing": const Icon(Icons.arrow_forward_ios)
      },
      {
        "icon": "my_doctors.svg",
        "title": "My Doctors",
        "trailing": const Icon(Icons.arrow_forward_ios)
      },
      {
        "icon": "prescriptions.svg",
        "title": "Prescriptions",
        "trailing": const Icon(Icons.arrow_forward_ios)
      },
    ];

    final List<Map<String, dynamic>> notificationList = [
      {
        "icon": "notification.svg",
        "title": "Pop-up Notification",
        "trailing": const Icon(Icons.arrow_forward_ios)
      },
    ];

    final List<Map<String, dynamic>> otherList = [
      {
        "icon": "contact_us.svg",
        "title": "Contact Us",
        "trailing": const Icon(Icons.arrow_forward_ios)
      },
      {
        "icon": "privacy_policy.svg",
        "title": "Privacy Policy",
        "trailing": const Icon(Icons.arrow_forward_ios)
      },
      {
        "icon": "setting.svg",
        "title": "Settings",
        "trailing": const Icon(Icons.arrow_forward_ios)
      },
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text("Profile"),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          child: ListView(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 0,
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Image.asset(
                              'assets/images/doctor.png',
                              width: width,
                            )),
                        title: const Text(
                          "Sherrif Adamu",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("shereef001@gmail.com"),
                        trailing: ElevatedButton(
                          onPressed: () {
                            Get.toNamed("/symptomCheck");
                          },
                          child: const Text("Edit"),
                          style: ElevatedButton.styleFrom(
                              primary: AppColors.appPrimaryColor,
                              elevation: 0,
                              shape: const StadiumBorder()),
                        )),
                  ),
                  Expanded(
                    flex: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        ProfileRateCard(
                          label: "Height",
                          value: "180cm",
                        ),
                        ProfileRateCard(
                          value: "65",
                          label: "Weight",
                        ),
                        ProfileRateCard(
                          label: "Age",
                          value: "22yo",
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: ProfileCard(
                      title: "Account",
                      data: accountList,
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: ProfileCard(
                      title: "Notification",
                      data: notificationList,
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: ProfileCard(
                      title: "Other",
                      data: otherList,
                    ),
                  ),
                  const Expanded(
                      flex: 0,
                      child: SizedBox(
                        height: 20,
                      ))
                ],
              )
            ],
          )),
    );
  }
}
