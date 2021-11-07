import 'package:ai_medicare/controllers/symptom_checker_controller.dart';
import 'package:ai_medicare/providers/symptom_checker_provider.dart';
import 'package:get/get.dart';

class SymptomCheckerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SymptomCheckerProvider());
    Get.put(SymptomCheckerController(symptomCheckerProvider: Get.find()));
  }
}
