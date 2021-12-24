import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletBalance extends StatelessWidget {
  const WalletBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text("Wallet"),
        ),
        body: Column(
          children: [
            Expanded(
                flex: 0,
                child: SizedBox(
                  height: height * 0.3,
                  child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) => Container(
                            height: height * 0.25,
                            width: width * 0.9,
                            margin: const EdgeInsets.only(left: 20, right: 20),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/atm_card.png"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("4,000.45",
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.white54)),
                                        Text("EXP",
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.white54))
                                      ],
                                    )),
                                const Expanded(
                                    child: SizedBox(
                                  height: 10,
                                )),
                                const Expanded(
                                    flex: 0,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 20),
                                      child: Text("greenich wallet",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white54)),
                                    )),
                                Expanded(
                                    flex: 0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Expanded(
                                          child: Text("Tom Clancy",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white54)),
                                        ),
                                        Expanded(
                                            child: Text("11/25",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white54)))
                                      ],
                                    )),
                              ],
                            ),
                          )),
                )),
            const Expanded(
              flex: 0,
              child: Text("Slide"),
            ),
            Expanded(
              flex: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: AppColors.appPrimaryColor,
                          shape: const StadiumBorder()),
                      onPressed: () {
                        Get.toNamed("/wallet_setup");
                      },
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            "Top Up".tr,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    )),
                    const Expanded(
                        child: SizedBox(
                      width: 10,
                    )),
                    Expanded(
                        child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: AppColors.appPrimaryColor,
                          shape: const StadiumBorder()),
                      onPressed: () {
                        Get.toNamed("/reciepts");
                      },
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Reciept".tr,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
            ),
            const Expanded(
                flex: 0,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Transaction History",
                    style: TextStyle(fontSize: 20),
                  ),
                )),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
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
