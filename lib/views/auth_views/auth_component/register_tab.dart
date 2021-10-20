import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/views/auth_views/auth_component/user_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class RegisterTab extends StatelessWidget {
  const RegisterTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return Scaffold(
      backgroundColor: AppColors.Color8,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "hey".tr,
              style: const TextStyle(fontSize: 18),
            ),
          ),
          Center(
            child: Text(
              "createAccount".tr,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          DefaultTabController(
              length: 5,
              initialIndex: 0,
              child: Expanded(
                child: Column(
                  children: [
                    Expanded(
                      flex: 0,
                      child: Text("category".tr),
                    ),
                    Expanded(
                      flex: 0,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 0.0, right: 0, top: 20),
                        child: Material(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            color: AppColors.Color8,
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: TabBar(
                                  unselectedLabelColor: AppColors.Color9,
                                  indicator: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: AppColors.appPrimaryColor
                                        .withOpacity(0.3),
                                  ),
                                  tabs: [
                                    Tab(
                                        child: SvgPicture.asset(
                                      'assets/images/svg/user-icon.svg',
                                      width: width * 0.12,
                                      height: height * 0.03,
                                      color: AppColors.appPrimaryColor,
                                    )),
                                    Tab(
                                        child: SvgPicture.asset(
                                      'assets/images/svg/doctor-icon.svg',
                                      width: width * 0.12,
                                      height: height * 0.03,
                                      color: AppColors.appPrimaryColor,
                                    )),
                                    Tab(
                                        child: SvgPicture.asset(
                                      'assets/images/svg/phamarcy-icon.svg',
                                      width: width * 0.12,
                                      height: height * 0.03,
                                      color: AppColors.appPrimaryColor,
                                    )),
                                    Tab(
                                        child: SvgPicture.asset(
                                      'assets/images/svg/hospital-icon.svg',
                                      width: width * 0.12,
                                      height: height * 0.03,
                                      color: AppColors.appPrimaryColor,
                                    )),
                                    Tab(
                                        child: SvgPicture.asset(
                                      'assets/images/svg/lab-icon.svg',
                                      width: width * 0.12,
                                      height: height * 0.03,
                                      color: AppColors.appPrimaryColor,
                                    )),
                                  ]),
                            )),
                      ),
                    ),
                    const Expanded(
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          UserForm(
                            title: "user",
                          ),
                          UserForm(
                            title: "doctor",
                          ),
                          UserForm(
                            title: "phamarcy",
                          ),
                          UserForm(
                            title: "hospital",
                          ),
                          UserForm(
                            title: "lab",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
