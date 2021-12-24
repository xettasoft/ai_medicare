import 'package:ai_medicare/providers/base_provider.dart';
import 'package:ai_medicare/providers/models/appointmentModels/appointments.dart';
import 'package:ai_medicare/providers/models/base/pagination_filter.dart';
import 'package:get/get.dart';

class AppointmentProvider extends BaseProvider {
  Future<AppointmentsModel> myAppointments(PaginationFilter filter) async {
    Response? res;
    try {
      res = await get("/appointments");
      if (res.statusCode == 200 || res.statusCode == 201) {
        return AppointmentsModel.fromJson(res.body);
      }
      return AppointmentsModel.withError(res.body);
    } catch (e) {
      return AppointmentsModel.withError(res?.body);
    }
  }

  Future<AppointmentsModel> makeAppointment(Map body) async {
    Response? res;
    try {
      res = await post("/appointments", body);
      if (res.statusCode == 200 || res.statusCode == 201) {
        return AppointmentsModel.fromJson(res.body);
      }
      return AppointmentsModel.withError(res.body);
    } catch (e) {
      return AppointmentsModel.withError(res?.body);
    }
  }
}
