import 'package:ai_medicare/controllers/medication_controller.dart';
import 'package:ai_medicare/providers/medication_provider.dart';
import 'package:get/get.dart';

class MedicationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MedicationProvider());
    Get.put(MedicationController(medicationProvider: Get.find()));
  }
}
