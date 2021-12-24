import 'package:ai_medicare/providers/appointment_provider.dart';
import 'package:ai_medicare/providers/models/appointmentModels/appointment.dart';
import 'package:ai_medicare/providers/models/appointmentModels/appointments.dart';
import 'package:ai_medicare/providers/models/base/pagination_filter.dart';
import 'package:get/get.dart';

class AppointmentsController extends GetxController {
  final AppointmentProvider appointmentProvider;
  AppointmentsController({required this.appointmentProvider});

  final _appointments = <AppointmentModel>[].obs;
  final _paginationFilter = PaginationFilter().obs;
  final _lastPage = false.obs;
  final _loading = false.obs;

  List<AppointmentModel> get notifications => _appointments.toList();
  int get limit => _paginationFilter.value.limit;
  int get _page => _paginationFilter.value.page;
  bool get lastPage => _lastPage.value;
  bool get loading => _loading.value;

  @override
  void onInit() {
    super.onInit();
    ever(_paginationFilter, (_) => _getAllAppointment());
    _changePaginationFilter(1, 15);
  }

  Future<void> _getAllAppointment() async {
    _loading.value = true;
    final Data =
        await appointmentProvider.myAppointments(_paginationFilter.value);
    if (Data.appointments!.isEmpty) {
      _lastPage.value = true;
    }
    _appointments.addAll(Data.appointments!.toList());
    _loading.value = false;
  }

  Future<AppointmentsModel> makeAppointment() async {
    final request = AppointmentModel();
    final result = await appointmentProvider.makeAppointment(request.toJson());
    return result;
  }

  void changeTotalPerPage(int limitValue) {
    _appointments.clear();
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
