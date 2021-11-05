// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return Drawer(
      child: ListView(padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: height * 0.28,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/svg/logo.svg',
                    width: width * 0.2,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "onboardingPrefix".tr,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: "onboardingPageTitle".tr,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.grey)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20)),
                      child: ListTile(
                        onTap: () {},
                        leading: const Icon(Icons.home),
                        title: const Text(
                          "Home",
                          style: TextStyle(color: Colors.black87, fontSize: 20),
                        ),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: ListTile(
                      onTap: () {
                        Get.toNamed("/myProfile");
                      },
                      leading: const Icon(Icons.person_rounded),
                      title: Text(
                        "Profile",
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 20),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: ListTile(
                      onTap: () {
                        Get.toNamed("/medications");
                      },
                      leading: const Icon(Icons.file_copy),
                      title: Text(
                        "Medications",
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 20),
                      ),
                      trailing: Badge(
                        badgeContent: const Text('3'),
                        shape: BadgeShape.square,
                        badgeColor: Colors.greenAccent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: ListTile(
                      onTap: () {},
                      leading: const Icon(Icons.shopping_cart_outlined),
                      title: Text(
                        "Cart",
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 20),
                      ),
                      trailing: Badge(
                        badgeContent: const Text('6'),
                        shape: BadgeShape.square,
                        badgeColor: Colors.yellowAccent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20)),
                      child: ListTile(
                        onTap: () {},
                        leading:
                            const Icon(Icons.account_balance_wallet_rounded),
                        title: const Text(
                          "Wallet",
                          style: TextStyle(color: Colors.black87, fontSize: 20),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    )),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: ListTile(
                      onTap: () {},
                      leading: const Icon(Icons.account_balance),
                      title: Text(
                        "Balance",
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 20),
                      ),
                    )),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: ListTile(
                      onTap: () {},
                      leading: const Icon(Icons.money),
                      title: Text(
                        "TopUp",
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 20),
                      ),
                    )),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: ListTile(
                      onTap: () {},
                      leading: const Icon(Icons.list),
                      title: Text(
                        "Transactions",
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 20),
                      ),
                    )),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: ListTile(
                      onTap: () {},
                      leading: const Icon(Icons.receipt),
                      title: Text(
                        "Receipt",
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 20),
                      ),
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: SizedBox(
                    width: width,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20)),
                      child: ListTile(
                        onTap: () {},
                        leading: const Icon(Icons.vpn_key),
                        title: const Text(
                          "Security",
                          style: TextStyle(color: Colors.black87, fontSize: 20),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: ListTile(
                      onTap: () {},
                      leading: const Icon(Icons.info),
                      title: Text(
                        "About",
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 20),
                      ),
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: SizedBox(
                    width: width,
                    child: ListTile(
                      onTap: () {
                        Get.toNamed('/login');
                      },
                      leading: const Icon(Icons.logout),
                      title: const Text(
                        "Log Out",
                        style: TextStyle(color: Colors.black87, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]),
    );
  }
}
