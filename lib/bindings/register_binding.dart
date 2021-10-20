
import 'package:ai_medicare/controllers/register_controller.dart';
import 'package:ai_medicare/providers/register_provider.dart';
import 'package:get/get.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterProvider());
    Get.put(RegisterController(authProvider: Get.find()));
  }
}
