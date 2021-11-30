import 'package:ai_medicare/controllers/setup_wallet_controller.dart';
import 'package:ai_medicare/providers/setup_provider.dart';
import 'package:get/get.dart';

class SetupWalletBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetupProvider());
    Get.put(SetupWalletController(setupProvider: Get.find()));
  }
}
