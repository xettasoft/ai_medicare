import 'package:ai_medicare/controllers/notification_controller.dart';
import 'package:ai_medicare/providers/notification_provider.dart';
import 'package:get/get.dart';

class NotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationProvider());
    Get.put(NotificationController(notificationProvider: Get.find()));
  }
}
