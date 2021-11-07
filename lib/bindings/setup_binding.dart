import 'package:ai_medicare/controllers/setup_controller.dart';
import 'package:ai_medicare/providers/setup_provider.dart';
import 'package:get/get.dart';

class SetupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetupProvider());
    Get.put(SetupController(setupProvider: Get.find()));
  }
}
