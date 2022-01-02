import 'package:ai_medicare/controllers/seesion_controller.dart';
import 'package:ai_medicare/providers/session_provider.dart';
import 'package:ai_medicare/providers/shared_preference_helper.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SessionProvider());
    Get.lazyPut(() => SharedPreferenceHelper(SharedPreferences.getInstance()));
    Get.put(SessionController(sessionProvider: Get.find(), prefs: Get.find()));
  }
}
