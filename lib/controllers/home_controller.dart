import 'package:ai_medicare/providers/home_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HomeProvider homeProvider;
  HomeController({required this.homeProvider});

  RxBool isDeviceSetupNotifier = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  isDeviceSetupNotified({bool state = true}) =>
      isDeviceSetupNotifier.value = state;
}
