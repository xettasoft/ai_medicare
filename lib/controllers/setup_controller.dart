import 'package:ai_medicare/providers/setup_provider.dart';
import 'package:get/get.dart';

class SetupController extends GetxController {
  final SetupProvider setupProvider;
  SetupController({required this.setupProvider});

  RxString selected = RxString("");
  List<String> images = [
    "assets/images/device/white.png",
    "assets/images/device/blue.png",
    "assets/images/device/black.png",
    "assets/images/device/white.png"
  ];

  @override
  void onInit() {
    super.onInit();
    selected.value = images[0];
  }

  selectDevice({int index = 0}) => selected.value = images[index];
}
