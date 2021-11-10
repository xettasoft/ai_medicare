import 'package:ai_medicare/providers/base_provider.dart';
import 'package:ai_medicare/providers/models/base/pagination_filter.dart';
import 'package:get/get.dart';

class MedicationProvider extends BaseProvider {
  Future<List<String>> fetchMedication(PaginationFilter filter) async {
    Response? res;
    try {
      List<String> symptoms = [
        "Diabetes melitus",
        "Diabetes melitus",
        "Diabetes melitus",
        "Diabetes melitus",
        "Diabetes melitus",
        "Diabetes melitus",
        "Diabetes melitus",
        "Diabetes melitus",
        "Diabetes melitus",
      ];

      // await Future.delayed(const Duration(seconds: 2));
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
