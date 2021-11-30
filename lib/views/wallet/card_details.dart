import 'package:ai_medicare/common/colors.dart';
import 'package:ai_medicare/controllers/setup_wallet_controller.dart';
import 'package:ai_medicare/views/shared/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CardDetails extends GetView<SetupWalletController> {
  const CardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text("Card Detail"),
        ),
        body: Column(
          children: [
            const Expanded(
              flex: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Enter card details to pay",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            const Expanded(
                flex: 0,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      "Start by linking your card, so payments can be made from the app. Multiple cards can be added later",
                      textAlign: TextAlign.center,
                    ))),
            Expanded(
                flex: 0,
                child: Center(
                    child: Image.asset("assets/images/card_detail.png"))),
            Expanded(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const ATextFormField(
                            hintText: 'Top up amount',
                            labelText: 'Top up amount',
                            icon: Icon(Icons.card_travel)),
                        const SizedBox(
                          height: 10,
                        ),
                        const ATextFormField(
                            hintText: 'Card Number',
                            labelText: 'Card Number',
                            icon: Icon(Icons.credit_card)),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Expanded(
                                child: ATextFormField(
                              hintText: 'CVV',
                              labelText: 'CVV',
                              icon: Icon(Icons.password),
                            )),
                            Expanded(
                                flex: 0,
                                child: SizedBox(
                                  width: 10,
                                )),
                            Expanded(
                                child: ATextFormField(
                              hintText: 'Expiry Date',
                              labelText: 'Expiry Date',
                              icon: Icon(Icons.date_range),
                            ))
                          ],
                        )
                      ],
                    ))),
            Expanded(
              flex: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: AppColors.appPrimaryColor,
                      shape: const StadiumBorder()),
                  onPressed: () {
                    Get.toNamed("/pay_card_success");
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "Pay".tr,
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
