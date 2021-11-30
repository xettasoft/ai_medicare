import 'package:ai_medicare/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class WalletStup extends StatelessWidget {
  const WalletStup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              children: const [
                Text(
                  "Setup Wallet",
                  style: TextStyle(fontSize: 40),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "choose one of the payment gateways to setup your account",
                    ))
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
                    //Get.offAndToNamed("/vitals");
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
