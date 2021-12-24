import 'package:ai_medicare/controllers/appointments_controller.dart';
import 'package:ai_medicare/providers/appointment_provider.dart';
import 'package:get/get.dart';

class AppointmentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppointmentProvider());
    Get.put(AppointmentsController(appointmentProvider: Get.find()));
  }
}
