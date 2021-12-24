import 'package:ai_medicare/controllers/appointment_controller.dart';
import 'package:ai_medicare/providers/appointment_provider.dart';
import 'package:get/get.dart';

class AppointmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppointmentProvider());
    Get.put(AppointmentController(appointmentProvider: Get.find()));
  }
}
