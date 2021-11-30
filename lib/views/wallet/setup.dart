import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/setup_wallet_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class WalletStup extends GetView<SetupWalletController> {
  const WalletStup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text("Wallet Setup"),
        ),
        body: Column(
          children: [
            Expanded(
                child: Center(
                    child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Setup Wallet",
                  style: TextStyle(fontSize: 40),
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    child: Text(
                      "choose one of the payment gateways to setup your account",
                      textAlign: TextAlign.center,
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Obx(() => RadioListTile(
                        onChanged: (value) {
                          controller.selectPaystacK();
                        },
                        groupValue: "payOption",
                        value: controller.paystack.value,
                        title: Image.asset("assets/images/paystack.png"),
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Obx(() => RadioListTile(
                      onChanged: (value) {
                        controller.selectFlutterwave();
                      },
                      groupValue: "payOption",
                      value: controller.flutterwave.value,
                      title: Image.asset(
                        "assets/images/flutterwave.png",
                      ))),
                )
              ],
            ))),
            Expanded(
              flex: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: AppColors.appPrimaryColor,
                      shape: const StadiumBorder()),
                  onPressed: () {
                    Get.toNamed("/pay_card");
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "Continue".tr,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
