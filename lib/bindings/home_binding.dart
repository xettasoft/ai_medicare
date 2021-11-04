import 'package:ai_medicare/controllers/home_controller.dart';
import 'package:ai_medicare/providers/home_provider.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeProvider());
    Get.put(HomeController(homeProvider: Get.find()));
  }
}
