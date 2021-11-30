import 'package:ai_medicare/providers/setup_provider.dart';
import 'package:get/get.dart';

class SetupWalletController extends GetxController {
  final SetupProvider setupProvider;
  SetupWalletController({required this.setupProvider});

  RxString paystack = "".obs;
  RxString flutterwave = "".obs;

  @override
  void onInit() {
    super.onInit();
    paystack.value = "payOption";
  }

  selectPaystacK() {
    paystack.value = "payOption";
    flutterwave.value = "";
  }

  selectFlutterwave() {
    paystack.value = "";
    flutterwave.value = "payOption";
  }

  getPaymentOption() =>
      paystack.value == "payOption" ? paystack.value : flutterwave.value;
}
