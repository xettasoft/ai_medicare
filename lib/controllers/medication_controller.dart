import 'package:ai_medicare/providers/medication_provider.dart';
import 'package:ai_medicare/providers/models/base/pagination_filter.dart';
import 'package:get/get.dart';

class MedicationController extends GetxController {
  final MedicationProvider medicationProvider;
  MedicationController({required this.medicationProvider});

  final _medications = <String>[].obs;
  final _paginationFilter = PaginationFilter().obs;
  final _lastPage = false.obs;
  final _loading = false.obs;

  List<String> get medications => _medications.toList();
  int get limit => _paginationFilter.value.limit;
  int get _page => _paginationFilter.value.page;
  bool get lastPage => _lastPage.value;
  bool get loading => _loading.value;

  @override
  void onInit() {
    super.onInit();
    ever(_paginationFilter, (_) => _getAllMedications());
    _changePaginationFilter(1, 15);
  }

  Future<void> _getAllMedications() async {
    _loading.value = true;
    final medicationData =
        await medicationProvider.fetchMedication(_paginationFilter.value);
    if (medicationData.isEmpty) {
      _lastPage.value = true;
    }
    _medications.addAll(medicationData);
    _loading.value = false;
  }

  void changeTotalPerPage(int limitValue) {
    _medications.clear();
    _lastPage.value = false;
    _changePaginationFilter(1, limitValue);
  }

  void _changePaginationFilter(int page, int limit) {
    _paginationFilter.update((val) {
      val!.page = page;
      val.limit = limit;
    });
  }

  void loadNextPage() => _changePaginationFilter(_page + 1, limit);

  @override
  void onClose() {
    super.onClose();
  }
}
