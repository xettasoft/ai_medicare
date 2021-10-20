import 'package:ai_medicare/controllers/login_controller.dart';
import 'package:ai_medicare/providers/login_provider.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginProvider());
    Get.put(LoginController(authProvider: Get.find()));
  }
}
