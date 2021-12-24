import 'package:ai_medicare/providers/appointment_provider.dart';
import 'package:ai_medicare/providers/models/appointmentModels/appointment.dart';
import 'package:ai_medicare/providers/models/appointmentModels/appointments.dart';
import 'package:get/get.dart';

class AppointmentController extends GetxController {
  final AppointmentProvider appointmentProvider;
  AppointmentController({required this.appointmentProvider});

  final _doctor = RxInt(0);
  final _date = Rx(DateTime.now().add(const Duration(hours: 1)));
  final _loading = false.obs;

  int? get doctor => _doctor.value;
  DateTime? get date => _date.value;
  bool get loading => _loading.value;

  void setDoctor(int val) {
    _doctor.value = val;
  }

  void setDate(DateTime val) {
    _date.value = val;
  }

  Future<AppointmentsModel> makeAppointment() async {
    _loading.value = true;
    final request = AppointmentModel(doctor: _doctor.value, date: _date.value);
    final result = await appointmentProvider.makeAppointment(request.toJson());
    _loading.value = false;
    return result;
  }
}
