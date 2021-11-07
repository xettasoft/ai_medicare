import 'package:ai_medicare/providers/symptom_checker_provider.dart';
import 'package:get/get.dart';

class SymptomCheckerController extends GetxController {
  final SymptomCheckerProvider symptomCheckerProvider;
  SymptomCheckerController({required this.symptomCheckerProvider});

  RxBool isChecked = false.obs;

  List<String> lastCheckData = [
    "Tuesday, Jul 20  10:21 AM",
    "Tuesday, Jul 20  10:21 AM",
    "Tuesday, Jul 20  10:21 AM",
    "Tuesday, Jul 20  10:21 AM",
    "Tuesday, Jul 20  10:21 AM",
    "Tuesday, Jul 20  10:21 AM",
    "Tuesday, Jul 20  10:21 AM",
  ];

  RxList<String> symptoms = <String>[].obs;
  RxStatus symptomStatus = RxStatus.empty();

  RxList<String> selectedSymptoms = <String>[].obs;
  RxList<String> result = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    symptomStatus = RxStatus.loading();
    symptomCheckerProvider.fetchSymptoms().then((value) {
      symptomStatus = RxStatus.success();
      symptoms.value = value;
    }, onError: (error) {
      symptomStatus = RxStatus.error();
    });
  }

  checkCondition({bool state = true}) => isChecked.value = state;

  selectSymptom({String symptom = ""}) {
    selectedSymptoms.contains(symptom)
        ? selectedSymptoms.remove(symptom)
        : selectedSymptoms.add(symptom);
  }

  checkSymptom() async {
    var response = await symptomCheckerProvider.checkSymptoms();
    result.value = response;
    isChecked.value = true;
  }

  @override
  void onClose() {
    super.onClose();
  }
}
