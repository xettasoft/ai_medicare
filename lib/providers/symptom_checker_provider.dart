import 'package:ai_medicare/providers/base_provider.dart';
import 'package:get/get.dart';

class SymptomCheckerProvider extends BaseProvider {
  Future<List<String>> fetchSymptoms() async {
    Response? res;
    try {
      List<String> symptoms = [
        "Abdominal Pain 1",
        "Abdominal Pain 2",
        "Abdominal Pain 3",
        "Abdominal Pain 4",
        "Abdominal Pain 5",
        "Abdominal Pain 6",
        "Abdominal Pain 7",
        "Abdominal Pain 8",
        "Abdominal Pain 9",
        "Abdominal Pain 10",
        "Abdominal Pain 11",
        "Abdominal Pain 12",
        "Abdominal Pain 13",
        "Abdominal Pain 14",
        "Abdominal Pain 15",
        "Abdominal Pain 16",
      ];
      return symptoms;
    } catch (e) {
      return ["Error"];
    }
  }

  Future<List<String>> checkSymptoms() async {
    Response? res;
    try {
      List<String> result = [
        "Diabetes militus",
        "Malaria",
        "stress",
        "Headache",
      ];
      return result;
    } catch (e) {
      return ["Error"];
    }
  }
}
